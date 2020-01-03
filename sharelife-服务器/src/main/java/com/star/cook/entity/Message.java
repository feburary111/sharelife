package com.star.cook.entity;

import java.io.Serializable;

public class Message implements Serializable {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column message.sender
     *
     * @mbggenerated
     */
    private Integer sender;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column message.receive
     *
     * @mbggenerated
     */
    private Integer receive;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column message.content
     *
     * @mbggenerated
     */
    private String content;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column message.timestamp
     *
     * @mbggenerated
     */
    private Long timestamp;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column message.isread
     *
     * @mbggenerated
     */
    private Integer isread;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column message.canread
     *
     * @mbggenerated
     */
    private Integer canread;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table message
     *
     * @mbggenerated
     */
    private static final long serialVersionUID = 1L;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column message.sender
     *
     * @return the value of message.sender
     *
     * @mbggenerated
     */
    public Integer getSender() {
        return sender;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column message.sender
     *
     * @param sender the value for message.sender
     *
     * @mbggenerated
     */
    public void setSender(Integer sender) {
        this.sender = sender;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column message.receive
     *
     * @return the value of message.receive
     *
     * @mbggenerated
     */
    public Integer getReceive() {
        return receive;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column message.receive
     *
     * @param receive the value for message.receive
     *
     * @mbggenerated
     */
    public void setReceive(Integer receive) {
        this.receive = receive;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column message.content
     *
     * @return the value of message.content
     *
     * @mbggenerated
     */
    public String getContent() {
        return content;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column message.content
     *
     * @param content the value for message.content
     *
     * @mbggenerated
     */
    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column message.timestamp
     *
     * @return the value of message.timestamp
     *
     * @mbggenerated
     */
    public Long getTimestamp() {
        return timestamp;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column message.timestamp
     *
     * @param timestamp the value for message.timestamp
     *
     * @mbggenerated
     */
    public void setTimestamp(Long timestamp) {
        this.timestamp = timestamp;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column message.isread
     *
     * @return the value of message.isread
     *
     * @mbggenerated
     */
    public Integer getIsread() {
        return isread;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column message.isread
     *
     * @param isread the value for message.isread
     *
     * @mbggenerated
     */
    public void setIsread(Integer isread) {
        this.isread = isread;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column message.canread
     *
     * @return the value of message.canread
     *
     * @mbggenerated
     */
    public Integer getCanread() {
        return canread;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column message.canread
     *
     * @param canread the value for message.canread
     *
     * @mbggenerated
     */
    public void setCanread(Integer canread) {
        this.canread = canread;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table message
     *
     * @mbggenerated
     */
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", sender=").append(sender);
        sb.append(", receive=").append(receive);
        sb.append(", content=").append(content);
        sb.append(", timestamp=").append(timestamp);
        sb.append(", isread=").append(isread);
        sb.append(", canread=").append(canread);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}