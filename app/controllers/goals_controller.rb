class GoalsController < ApplicationController
    def create
        goal = Goal.create!(
            squat: params["goal"]["squat"], 
            bench: params["goal"]["bench"], 
            deadlift: params["goal"]["deadlift"], 
            bodyweight: params["goal"]["bodyweight"], 
            date: params["goal"]["date"]
            )

        if goal  
            render json: {
                status: :goal_set, 
                goal: goal
            }
        else   
            render json: {
                status: 500
            }
        end 
    end 
end
