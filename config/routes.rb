Clickers::Application.routes.draw do
 root :to => "clickers#startpage"
 resources :clickers
match '/calculate' => 'clickers#calculate'
match ':id/exam' =>'clickers#exam'  
end
