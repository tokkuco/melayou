10.times do |product|
	Product.create!(
		title: "Menu #{product}",
		subtitle: "It is a long established fact that a reader will",
		price: 30,
		main_image: "http://placehold.it/600x400",
		thumb_image: "http://placehold.it/350x200"
		)
end

puts "10 product posts created"


8.times do |event|
	Event.create!(
		title: "My Event Post #{event}",
		body: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing "
		)
end

puts "8 event posts created"

3.times do |package|
	Package.create!(
		title: "My Post Package #{package}",
		describtion: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing ",
		price: 300,
		amount: 4)
end

puts "3 package posts created"