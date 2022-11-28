# rails db:seed
# heroku run rails db:seed --app renegadebio-staging

# ===========================================================================
# Destroy & Rebuild All
# ===========================================================================
ActiveRecord::Base.connection.execute("TRUNCATE TABLE article_types, characteristics, characteristic_groups, page_statuses, articles, copy_blocks, images, people, article_authors, tests, events RESTART IDENTITY")

# Load seeds in specific order

# "Constants"
load 'db/seeds/article_type_seeds.rb'
load 'db/seeds/characteristic_group_seeds.rb'
load 'db/seeds/page_status_seeds.rb'

# Must be run BEFORE `article_seeds`
load 'db/seeds/person_seeds.rb'

# Can be run in any order once the above seeds have been established
load 'db/seeds/article_seeds.rb'
# load 'db/seeds/event_seeds.rb'
load 'db/seeds/test_seeds.rb'
