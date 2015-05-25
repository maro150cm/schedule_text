module CoursesHelper
    def show_course(time,week)
        #http://stackoverflow.com/questions/14824453/rails-raw-sql-example
        sql="SELECT * FROM courses LEFT OUTER JOIN partdates ON partdates.id=courses.partdate_id LEFT OUTER JOIN partweeks ON partweeks.id=courses.partweek_id WHERE day_number="+week.to_s+" AND part_number="+time.to_s
        row = Course.find_by_sql(sql) # 顯示[#<Course id: nil, course_id: "C001", course_name: "國文">] 
        row.each do |app|
           return app  # 顯示#<Course:0x007fceedbc03b8> 
        end
    end
end
