package dao;

import java.util.HashMap;
import java.util.List;

import model.BoardDataBean;

import org.apache.ibatis.session.SqlSession;

public class MybatisBoardDBBean extends MybatisConnector {
	private final String namespace = "ldg.board";
	private static MybatisBoardDBBean instance = new MybatisBoardDBBean();
	SqlSession sqlSession;

	public static MybatisBoardDBBean getInstance() {
		System.out.println("MybatisBoardDBBean");
		return instance;
	}

	public int getArticleCount(String boardid) throws Exception {
		sqlSession = sqlSession();
		System.out.println("getArticleCount:" + boardid);
		try {
			HashMap map = new HashMap();
			map.put("boardid", boardid);
			System.out.println("����>?");
			return sqlSession.selectOne(namespace + ".getArticleCount", map);
		} finally {
			sqlSession.close();
		}
	}

	public List getArticles(int start, int end, String boardid)
			throws Exception {
		sqlSession = sqlSession();
		System.out.println("getArticles===old");
		HashMap map = new HashMap();
		map.put("start", start);
		map.put("end", end);
		map.put("boardid", boardid);
		try {
			return sqlSession.selectList(namespace + ".getArticles", map);
		} finally {
			sqlSession.close();
		}
	}

	public BoardDataBean getArticle(int num) throws Exception {
		sqlSession = sqlSession();
		HashMap map = new HashMap();
		map.put("num", num);
		BoardDataBean article = new BoardDataBean();
		try {
			int result = sqlSession
					.update(namespace + ".update_readcount", map);
			article = (BoardDataBean) sqlSession.selectOne(namespace
					+ ".getArticle", map);
		} finally {
			sqlSession.commit();
			sqlSession.close();
			return article;
		}
	}

	public void insertArticle(BoardDataBean article) throws Exception {
		sqlSession = sqlSession();
		int num = article.getNum();
		int ref = article.getRef();
		int re_step = article.getRe_step();
		int re_level = article.getRe_level();
		try {
			HashMap map = new HashMap();
			int number = sqlSession.selectOne(namespace + ".insertArticle_new");
			if (number != 0)
				number = number + 1;
			else
				number = 1;
			if (num != 0) {
				map.put("ref", ref);
				map.put("re_step", re_step);
				sqlSession.update(namespace + ".insertArticle_update", map);
				sqlSession.commit();
				re_step = re_step + 1;
				re_level = re_level + 1;
			} else {
				ref = number;
				re_step = 0;
				re_level = 0;
			}
			article.setNum(number);
			article.setRef(ref);
			article.setRe_step(re_step);
			article.setRe_level(re_level);
			System.out.println(article.getType()+","+article.getCases());
			System.out.println("insert:" + article);
			int result = sqlSession.insert(namespace + ".insertArticle_insert",article);
			System.out.println("insert  0k:" + result);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.commit();
			sqlSession.close();
		}
	}

	public int updateArticle(BoardDataBean article) throws Exception {
		sqlSession = sqlSession();
		HashMap map = new HashMap();
		map.put("num", article.getNum());
		int x = -1;
		try {
			String dbpasswd = (String) sqlSession.selectOne(namespace
					+ ".update_passwd", map);
			if (dbpasswd.equals(article.getPasswd())) {
				x = sqlSession.update(namespace + ".update_update", article);
			}
		} finally {
			sqlSession.commit();
			sqlSession.close();
		}
		return x;
	}

	public int deleteArticle(int num, String passwd) throws Exception {
		sqlSession = sqlSession();
		HashMap map = new HashMap();
		map.put("num", num);
		int x = -1;
		try {
			String dbpasswd = (String) sqlSession.selectOne(namespace
					+ ".update_passwd", map);
			if (dbpasswd.equals(passwd)) {
				x = sqlSession.delete(namespace + ".delete", map);
			}
		} finally {
			sqlSession.commit();
			sqlSession.close();
		}
		return x;
	}

}
