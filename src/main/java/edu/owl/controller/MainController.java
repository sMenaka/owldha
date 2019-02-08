package edu.owl.controller;

import com.google.api.client.googleapis.auth.oauth2.GoogleIdToken;
import edu.owl.gplus.IdTokenVerifierAndParser;
import edu.owl.model.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;


@Controller
public class MainController {
    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String home() {
        return "index";
    }

    @RequestMapping(value = "/Login", method = RequestMethod.POST)
    @ResponseBody
    public String googleLogin(@RequestParam("id_token") String idToken) {
        String name = "";
        try {
            GoogleIdToken.Payload payload = IdTokenVerifierAndParser.getPayload(idToken);
            String email = payload.getEmail();
            name = (String) payload.get("name");
            String id = payload.getJwtId();

        } catch (Exception e) {
            System.out.println(e);
        }
        return name;
    }

    @RequestMapping(value = "/sign-up", method = RequestMethod.POST)
    @ResponseBody
    public String singUp(@RequestParam("fname") String fname, @RequestParam("lname") String lname, @RequestParam("conPsw") String psw, @RequestParam("email") String email) {
        User user = new User();
        DbManager manager = new DbManager();

        String id = "owl" + Calendar.getInstance().get(Calendar.YEAR) + manager.getAllItems("User").size() + 1;
        ;
        user.setFirstName(fname);
        user.setLastName(lname);
        user.setEmail(email);
        user.setPassword(psw);
        user.setUserName(email);
        user.setStudentId(id);
        System.out.println(manager.insert(user));
        return "name";
    }

    @RequestMapping(value = "/login.html", method = RequestMethod.GET)
    public String logonTo() {
        return "login";
    }

    @RequestMapping("/exam")
    public String exam(Model model, @RequestParam String examId, @RequestParam String userId) {
        DbManager manager = new DbManager();
        DoExam result = new DoExam();
        result.setExamId(Integer.parseInt(examId));
        result.setUserId(userId);
        manager.insert(result);
        List<Quiz> qlist = new ArrayList<Quiz>();
        List<Answer> alist = new ArrayList<Answer>();

        qlist = manager.getAllQuiez("from Quiz where  examId=" + examId);
        Quiz q = qlist.get(0);
        alist = manager.getAnswer("from Answer where  quizId=" + q.getQuizeId());
        Answer a1 = alist.get(0);
        Answer a2 = alist.get(1);
        Answer a3 = alist.get(2);
        Answer a4 = alist.get(3);
        Answer a5 = alist.get(4);
        model.addAttribute("userid",userId);
        model.addAttribute("a1", a1);
        model.addAttribute("a2", a2);
        model.addAttribute("a3", a3);
        model.addAttribute("a4", a4);
        model.addAttribute("a5", a5);
        model.addAttribute("quizNo", 0);
        model.addAttribute("quiz", q);
        return "quiz";
    }

    @RequestMapping(value = "/quiz", method = RequestMethod.POST)
    public String quiz(Model model, @RequestParam("quizId") String quizId, @RequestParam("examId") String examId, @RequestParam("option") String option,@RequestParam String userId ) {
        String redirect;
        List<Quiz> qlist = new ArrayList<Quiz>();
        List<Answer> aList = new ArrayList<Answer>();
        List<Answer> aListForResult=new ArrayList<Answer>();
        List<DoExam> resultList=new ArrayList<DoExam>();
        Answer answer;
        System.out.println(quizId);
        DbManager manager = new DbManager();
        aListForResult=manager.getAnswer("from Answer where answerId="+option);
        answer=aListForResult.get(0);
        if(answer.isTrue()){
            manager.justRunHQL("UPDATE DoExam SET marks= :marks + 2 where examId="+examId+"and userId="+userId);
        }


        qlist = manager.getAllQuiez("from Quiz where  examId=" + examId);
        Quiz q = qlist.get(Integer.parseInt(quizId));
        if (Integer.parseInt(quizId) == qlist.size()) {

            resultList=manager.getResult("from DoExam where examId="+examId+" and userId="+userId);
            model.addAttribute("result",resultList);
            redirect="result";
        }
        else {
            redirect="quiz";
            aList = manager.getAnswer("from Answer where  quizId=" + q.getQuizeId());

            Answer a1 = aList.get(0);
            Answer a2 = aList.get(1);
            Answer a3 = aList.get(2);
            Answer a4 = aList.get(3);
            Answer a5 = aList.get(4);
            model.addAttribute("a1", a1);
            model.addAttribute("a2", a2);
            model.addAttribute("a3", a3);
            model.addAttribute("a4", a4);
            model.addAttribute("a5", a5);
            model.addAttribute("quiz", q);
        }
        return redirect;
    }
    @RequestMapping(value = "/toLogin" ,method = RequestMethod.POST)
    public String login(Model model,@RequestParam("userName") String uName,@RequestParam("psw") String pwd ){
        String redirect;
        DbManager manager=new DbManager();
        try{
            System.out.println(uName);
            List<User> usl=manager.getUser("from User where userName='"+uName+"'");
            User us=usl.get(0);
            System.out.println(usl.size());
            if(us.getPassword().equals(pwd)){
                model.addAttribute("user",us);
                redirect="userHome";
            }
           else{

                redirect="errorLog";
                model.addAttribute("error","user name or password is incorrect");
            }


        }
        catch (Exception e){
            System.out.println(e);
            redirect="errorLog";
            model.addAttribute("error","user name or password is incorrect");
        }
        return redirect;
    }
    @RequestMapping("/userProfile")
    public String profile(Model modle,@RequestParam String userId){
        DbManager manager=new DbManager();
        List<User> usl=manager.getUser("from User where userId='"+userId+"'");
        User us=usl.get(0);
        modle.addAttribute("user",us);
        System.out.println(us.getEmail());
        return "profile";
    }
    @RequestMapping("/signUp")
    public String signUp(){
    return "signUp";
    }
    @RequestMapping("/subject")
    public String subject(Model model,@RequestParam String fieldId){
        DbManager manager =new DbManager();
        List<Subject> sublist=manager.getSubject("from Subject where fieldId="+fieldId);
       model.addAttribute("subjects",sublist);
        return "subject";
    }
    @RequestMapping("/Topic")
    public  String topic(Model model,@RequestParam String subId){
        DbManager manager =new DbManager();
        List<Topic> topicList=manager.getTopics("from Topic where subjectId="+subId);
        model.addAttribute("topics",topicList);
        return "topic";
    }
    @RequestMapping("/team")
    public String team(){
    return "team";
    }

}
