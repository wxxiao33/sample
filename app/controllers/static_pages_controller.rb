class StaticPagesController < ApplicationController
  # static_page controller for home page
  # it will get query the enrolled courses for login user
  def home
    if current_user
      enrollment_ids = Enrollment.where(user_id: current_user.id).pluck(:course_id)
      @enrollments = Enrollment.where(user_id: current_user.id)
      @courses = Course.where(id: enrollment_ids)
    end
  end

  # search the course based on the search form
  def search
    # if the dropdown menu is not used, search all courses
    if params[:subject_id].blank?
      @courses = Course.where("lower(name) LIKE ?", "%#{params[:search_text]}%")
    # if dropdown menu is used, only search for selected subject
    else
      sub_class_ids = Part.where(subject_id: params[:subject_id].to_i).pluck(:course_id)
      @courses = Course.where(id: sub_class_ids).where("lower(name) LIKE ?", "%#{params[:search_text]}%")
    end
  end


end
