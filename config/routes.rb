Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users,
             :controllers => {:invitations => 'users_invitations'}


  root "student_dashboard#index"

  # authenticate :user, ->(user) { user.student? } do
  #   root 'student_dashboard#index'
  #   resources :students, only: [:edit, :update]
  # end

  # authenticate :user, ->(user) { user.lecturer? } do
  #   root 'lecturer_dashboard#index'
  #   resources :lecturers, only: [:edit, :update]
  # end


  resources :courses do
    resources :subjects
  end
end
