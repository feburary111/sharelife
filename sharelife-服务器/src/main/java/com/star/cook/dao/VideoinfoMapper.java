package com.star.cook.dao;

import com.star.cook.entity.Videoinfo;
import java.util.List;

public interface VideoinfoMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table videoinfo
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Integer videoid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table videoinfo
     *
     * @mbggenerated
     */
    int insert(Videoinfo record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table videoinfo
     *
     * @mbggenerated
     */
    Videoinfo selectByPrimaryKey(Integer videoid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table videoinfo
     *
     * @mbggenerated
     */
    List<Videoinfo> selectAll();

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table videoinfo
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(Videoinfo record);
}