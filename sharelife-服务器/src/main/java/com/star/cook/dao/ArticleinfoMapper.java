package com.star.cook.dao;

import com.star.cook.entity.Articleinfo;
import java.util.List;

public interface ArticleinfoMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table articleinfo
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Integer articleid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table articleinfo
     *
     * @mbggenerated
     */
    int insert(Articleinfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table articleinfo
     *
     * @mbggenerated
     */
    Articleinfo selectByPrimaryKey(Integer articleid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table articleinfo
     *
     * @mbggenerated
     */
    List<Articleinfo> selectAll();

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table articleinfo
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(Articleinfo record);
}