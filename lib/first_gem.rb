class First_gem
  #�������Q���դ������h��Ӌ�㤹��
  def self.calcAge(barthday = nil)
    if barthday == nil
	puts "Input You Are Barthday!(YYYY/MM/DD)"
    else
	require "date"
	date1 = Date.strptime(barthday,'%Y/%m/%d').strftime("%Y%m%d").to_i
	date2 = Date.today.strftime("%Y%m%d").to_i
	age = (date2 - date1)/10000
	puts "Your Age is #{age}."
    end
  rescue Exception => e
	puts "Calc error,Input You Are Barthday!(YYYY/MM/DD)"
	puts e.message
  end

  #���������L�����ؤ���BMI��Ӌ�㤹��
  def self.calcBMI(height = nil,weight = nil)
    if height == nil or weight == nil
	puts "Input You Are height(m) and weight(kg)!"
    else
	bmi = weight.to_f/(height.to_f ** 2)
	if bmi < 18.5
	evaluation = "You have been determined to be a little thin"
	elsif bmi < 25
	evaluation = "You have been determined to be just the right physique"
	else
	evaluation = "You have been determined to be a little fat"
	end
	puts "Your BMI is #{bmi}."
	puts evaluation
    end
  rescue Exception => e
	puts "Calc error ,Input You Are height(m) and weight(kg)!"
	puts e.message
  end
end
