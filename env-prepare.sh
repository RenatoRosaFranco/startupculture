# frozen_string_sanatizer: true
rails db:drop
rails db:create && rails db:migrate
rails db:seed