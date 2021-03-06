package dao;

import java.util.List;

import entity.Director;
import org.hibernate.Query;
import org.hibernate.Session;


public class DirectorDaoImpl extends BaseDaoImpl implements DirectorDao {
    Class clone=Director.class;
    @Override
    public Director findByID(int director_id) {

        Session session = getSession(clone);
        Query query = session.createQuery("from Director a where a.directorId="+director_id);
        //query.setInteger(0, director_id);
        List list = query.list();
        session.beginTransaction().commit();
        session.close();
        return list.size() > 0 ? (Director) list.get(0) : null;
    }

    @Override
    public List<Director> findAll() {

        Session session = getSession(clone);
        Query query = session.createQuery("from Director ");
        List list = (List<Director>) query.list();
        session.beginTransaction().commit();
        session.close();
        return list;
    }

    @Override
    public List<Director> findByName(String director_name) {

        Session session = getSession(clone);
        Query query = session.createQuery("from Director a where a.directorName="+"'"+director_name+"'");
        //query.setString(0, director_name);
        List list = (List<Director>) query.list();
        session.beginTransaction().commit();
        session.close();
        return list;
    }
}