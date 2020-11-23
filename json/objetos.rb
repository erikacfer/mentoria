class Objeto
  include Enumerable

  def objeto_a
    obj_a = [
      {
        "action" => "login",
        "user" => "pbocucci",
        "id_user" => "1",
      },
      {
        "action" => "paused",
        "user" => "",
        "id_user" => "45",
      },
      {
        "action" => "login",
        "user" => "rgaspar",
        "id_user" => "2",
      },
      {
        "action" => "login",
        "user" => "acruz",
        "id_user" => "3",
      },
      {
        "action" => "logout",
        "user" => "pbocucci",
        "id_user" => "1",
      },
      {
        "action" => "logout",
        "user" => "rgaspar",
        "id_user" => "2",
      },
      {
        "action" => "logout",
        "user" => "acruz",
        "id_user" => "3",
      },
      {
        "action" => "paused",
        "user" => "pbocucci",
        "id_user" => "1",
      },
      {
        "action" => "paused",
        "user" => "rgaspar",
        "id_user" => "2",
      },
      {
        "action" => "paused",
        "user" => "",
        "id_user" => "45",
      },
    ]

    puts "*********** Ação de pausa do usuário rgaspar:"
    puts obj_a.select { |user1| user1["user"] == "rgaspar" }.select { |action1| action1["action"] == "paused" }
    puts obj_a.select { |user1| user1["user"] == "rgaspar" and user1["action"] == "paused" }
    puts "*********** Total de registros do usuário pbocucci:"
    puts obj_a.count { |user1| user1["user"] == "pbocucci" }
    puts "*********** Registros com user nulo:"
    puts obj_a.select { |user1| user1["user"] == "" }
    puts obj_a.any? { |user1| user1["user"] == "" }
  end

  def objeto_b
    obj_b = [1, 2, 3, 4, 5, 2, 3]

    puts "*********** Valores multiplicaods por 3 usando each:"
    obj_b.each { |valor| puts valor * 3 }

    puts "*********** Valores multiplicaods por 3 usando map:"
    obj_b.map { |valor| puts valor * 3 }

    puts "*********** Valores multiplicaods por 3 usando collect:"
    obj_b.collect { |valor| puts valor * 3 }

    puts "*********** Valores ímpares:"
    num_odd = obj_b.select { |valor| valor.odd? }
    puts num_odd

    puts "*********** Valores pares:"
    num_even = obj_b.select { |valor| valor.even? }
    puts num_even

    puts "*********** Valores maiores que 3 usando for:"
    for valor in obj_b
      if valor > 3
        puts valor
      end
    end

    puts "*********** Valores maiores que 3 usando each:"
    obj_b.each { |valor| puts valor > 3 }

    puts "*********** Valores maiores que 3 usando select(?):"
    obj_b.select { |valor| puts valor > 3 }

    puts "*********** Valores maiores que 3 usando select:"
    arr1 = obj_b.select { |valor| valor > 3 }
    puts arr1

    puts "*********** Valores maiores que 3 usando map(?):"
    obj_b.map { |valor| puts valor > 3 }

    puts "*********** Valores maiores que 3 usando map:"
    arr1 = obj_b.map { |valor| valor > 3 }
    puts arr1
  end

  def objeto_c
    obj_c = [
      {
        "id" => 157,
        "athleteId" => 436,
        "trainingId" => 2695,
        "trainingScheduleAthleteEvent" => [
          {
            "day" => 23,
            "month" => 7,
            "year" => 2020,
            "hour" => 6,
            "minute" => 0,
            "fullDate" => "2020-07-23T06:00:00",
            "id" => 1338,
            "trainingScheduleAthleteId" => 157,
            "duration" => "05:59:00",
            "isFinished" => false,
            "partsOfDay" => "Morning",
            "scheduleType" => "Monthly",
            "status" => "Pending",
            "weekNumber" => 30,
            "weekEventIndex" => 1,
            "totalWeekEvents" => 1,
          }, {
            "day" => 25,
            "month" => 7,
            "year" => 2020,
            "hour" => 18,
            "minute" => 0,
            "fullDate" => "2020-07-25T18:00:00",
            "id" => 1339,
            "trainingScheduleAthleteId" => 157,
            "duration" => "05:59:00",
            "isFinished" => false,
            "partsOfDay" => "Night",
            "scheduleType" => "Monthly",
            "status" => "Pending",
            "weekNumber" => 30,
            "weekEventIndex" => 1,
            "totalWeekEvents" => 1,
          }, {
            "day" => 27,
            "month" => 7,
            "year" => 2020,
            "hour" => 0,
            "minute" => 0,
            "fullDate" => "2020-07-27T00:00:00",
            "id" => 1340,
            "trainingScheduleAthleteId" => 157,
            "duration" => "23:59:00",
            "isFinished" => false,
            "partsOfDay" => "Free",
            "scheduleType" => "Monthly",
            "status" => "Pending",
            "weekNumber" => 31,
            "weekEventIndex" => 1,
            "totalWeekEvents" => 1,
          }, {
            "day" => 29,
            "month" => 7,
            "year" => 2020,
            "hour" => 18,
            "minute" => 0,
            "fullDate" => "2020-07-29T18:00:00",
            "id" => 1341,
            "trainingScheduleAthleteId" => 157,
            "duration" => "05:59:00",
            "isFinished" => false,
            "partsOfDay" => "Night",
            "scheduleType" => "Monthly",
            "status" => "Pending",
            "weekNumber" => 31,
            "weekEventIndex" => 1,
            "totalWeekEvents" => 1,
          }, {
            "day" => 31,
            "month" => 7,
            "year" => 2020,
            "hour" => 6,
            "minute" => 0,
            "fullDate" => "2020-07-31T06:00:00",
            "id" => 1342,
            "trainingScheduleAthleteId" => 157,
            "duration" => "05:59:00",
            "isFinished" => false,
            "partsOfDay" => "Morning",
            "scheduleType" => "Monthly",
            "status" => "Pending",
            "weekNumber" => 31,
            "weekEventIndex" => 1,
            "totalWeekEvents" => 1,
          }, {
            "day" => 2,
            "month" => 8,
            "year" => 2020,
            "hour" => 24,
            "minute" => 0,
            "fullDate" => "2020-08-03T00:00:00",
            "id" => 1343,
            "trainingScheduleAthleteId" => 157,
            "duration" => "05:59:00",
            "isFinished" => false,
            "partsOfDay" => "Dawn",
            "scheduleType" => "Monthly",
            "status" => "Pending",
            "weekNumber" => 32,
            "weekEventIndex" => 1,
            "totalWeekEvents" => 1,
          }, {
            "day" => 4,
            "month" => 8,
            "year" => 2020,
            "hour" => 6,
            "minute" => 0,
            "fullDate" => "2020-08-04T06:00:00",
            "id" => 1344,
            "trainingScheduleAthleteId" => 157,
            "duration" => "05:59:00",
            "isFinished" => false,
            "partsOfDay" => "Morning",
            "scheduleType" => "Monthly",
            "status" => "Pending",
            "weekNumber" => 32,
            "weekEventIndex" => 1,
            "totalWeekEvents" => 1,
          },
        ],
      },
    ]

    puts "*********** Status com Pending:"
    puts obj_c[0]["trainingScheduleAthleteEvent"].select { |status1| status1["status"] == "Pending" }
    puts "*********** Rregistros de night no dia 29:"
    puts obj_c[0]["trainingScheduleAthleteEvent"].select { |partsOfDay1| partsOfDay1["partsOfDay"] == "Night" }.select { |day1| day1["day"] == 29 }
    puts obj_c[0]["trainingScheduleAthleteEvent"].select { |partsOfDay1| partsOfDay1["partsOfDay"] == "Night" and partsOfDay1["day"] == 29 }
    puts "*********** Rregistros do dia 25:"
    puts obj_c[0]["trainingScheduleAthleteEvent"].any? { |day1| day1["day"] == 25 }
    puts obj_c[0]["trainingScheduleAthleteEvent"].find { |day1| day1["day"] == 25 }
  end
end
