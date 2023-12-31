// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import CommentsController from "./comments_controller"
application.register("comments", CommentsController)

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import SearchResultsController from "./search_results_controller"
application.register("search-results", SearchResultsController)
