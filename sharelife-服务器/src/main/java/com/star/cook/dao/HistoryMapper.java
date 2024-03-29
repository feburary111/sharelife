package com.star.cook.dao;

import com.star.cook.entity.History;
import java.util.List;

public interface HistoryMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table history
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Integer historyid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table history
     *
     * @mbggenerated
     */
    int insert(History record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table history
     *
     * @mbggenerated
     */
    History selectByPrimaryKey(Integer historyid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table history
     *
     * @mbggenerated
     */
    List<History> selectAll();

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table history
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(History record);
}