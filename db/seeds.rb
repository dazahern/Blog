# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.create ([
	{
		title: 				"Hello World",
		body: 				"lorum ipsum",
		publication: 		"The Steer Blog",
		author:				"Daz Ahern",
		pull_quote:  		"dolor sit...",
		published_at:  		1.week.ago,
		url:				"http://www.steer.me"
	}, 
	{
		title: 				"Hello You",
		body: 				"lorum ipsum",
		publication: 		"The Steer Blog",
		author:				"Daz Ahern",
		pull_quote:  		"dolor sit...",	
		published_at:  		2.weeks.ago	
	}, 
	{
		title: 				"Hello Them",
		body: 				"lorum ipsum",
		publication: 		"The Steer Blog",
		author:				"Daz Ahern",
		pull_quote:  		"dolor sit...",
		published_at:  		3.weeks.ago		
	}

	])