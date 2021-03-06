package test;

import dao.ScriptwriterDao;
import dao.ScriptwriterDaoImpl;
import entity.Scriptwriter;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.util.List;

public class ScriptwriterDaoImplTest extends Scriptwriter {

    @Before
    public void setUp() throws Exception {
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void insert() {
        System.out.println("增加label值信息");
        int i=1;
        int j=2;
        ScriptwriterDao dao = new ScriptwriterDaoImpl();
        Scriptwriter a1=dao.findByID(i);
        Scriptwriter a2=dao.findByID(j);
        if(a1!=null||a2!=null) {
            System.out.println("已经存在该属性值ID!");
        }
        else {
            Scriptwriter sciptwri = new Scriptwriter();
            sciptwri.setScriptwriterId(i);
            sciptwri.setScriptwriterName("维德胡·维诺德·乔普拉");
            dao.Insert(sciptwri, Scriptwriter.class);
            sciptwri.setScriptwriterId(j);
            sciptwri.setScriptwriterName("拉吉库马尔·希拉尼");
            dao.Insert(sciptwri, Scriptwriter.class);
            //验证是否增加属性值信息成功
            Scriptwriter a = dao.findByID(i);
            Scriptwriter b = dao.findByID(j);
            if(a==null||b==null) {
                System.out.println("Save Error!");
            }
            else {
                System.out.println("增加属性值ID为 "+i+" 和 "+j+" 的信息成功!");
            }
        }
    }

    @Test
    public void delete() {
        System.out.println("删除一行指定属性值ID信息");
        int i=1;
        ScriptwriterDao dao = new ScriptwriterDaoImpl();
        Scriptwriter sciptwri= dao.findByID(i);
        if(sciptwri!=null) {
            try {
                dao.Delete(sciptwri, Scriptwriter.class);
            }catch (Exception e) {
                //System.err.println("Delete Error!");
                System.out.println(e.getMessage());
            }
        }
        //验证是否删除属性值信息成功
        Scriptwriter a = dao.findByID(i);
        if(a!=null) {
            System.out.println("Delete Error!");
        }
        else {
            System.out.println("删除属性值ID为 "+i+" 的信息成功!");
        }
    }

    @Test
    public void update() {
        System.out.println("更新一行信息某列元素");
        int i=2;
        ScriptwriterDao dao = new ScriptwriterDaoImpl();
        Scriptwriter sciptwri=dao.findByID(i);
        //判断该属性值ID是否存在
        if(sciptwri==null) {
            System.out.println("Find Error!");
        }
        else {
            sciptwri.setScriptwriterName("阿希贾特·乔希");
            dao.Update(sciptwri, Scriptwriter.class);
            //验证是否更新属性值信息成功
            Scriptwriter a = dao.findByID(i);
            if(!a.getScriptwriterName().equals("阿希贾特·乔希")) {
                System.out.println("Update Error!");
            }
            System.out.println("更新属性值ID为"+i+" 的信息成功!");
        }
    }

    @Test
    public void findByID() {
        System.out.println("通过ID输出一行信息");
        ScriptwriterDao dao = new ScriptwriterDaoImpl();
        int i=1;
        Scriptwriter a = dao.findByID(i);
        if(a == null) {
            System.out.println("没有ID为 "+i+" 的信息");
        }
        else {
            System.out.println("查找ID为"+a.getScriptwriterId()+" 的一行信息成功!");}
    }

    @Test
    public void findAll() {
        System.out.println("列出所有信息");
        ScriptwriterDao swd = new ScriptwriterDaoImpl();
        List<Scriptwriter> sw = swd.findAll();
        for(int i = 0; i < sw.size(); i++) {
            Scriptwriter a = sw.get(i);
            System.out.println(a.getScriptwriterId()+" "+a.getScriptwriterName());
        }
        System.out.println("列出所有信息成功!");
    }

    @Test
    public void findByName() {
        System.out.println("通过编剧名输出一行信息");
        ScriptwriterDao dao = new ScriptwriterDaoImpl();
        String str="张艺谋";
        Scriptwriter a = dao.findByName(str);
        if(a == null) {
            System.out.println("没有编剧名为 "+str+" 的信息");
        }
        else {
            System.out.println("查找编剧名为"+a.getScriptwriterName()+" 的一行信息成功!");}
    }
}