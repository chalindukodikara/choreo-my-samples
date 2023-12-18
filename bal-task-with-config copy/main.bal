import ballerina/log;
import ballerina/time;

// echo -n <base64encoded> | base64 -d | less

type Information record {
    string infoId;
    string location;
    string description;
};

public type Education record {
    string educationType;
    Certificate certificates;
};

public type Certificate record {
    string name;
    string description;
};

public type Age record {
    int years;
    int months;
};

public type User record {
    string id;
    string name;
    *Information;
    Age age;
    Education education?;
};

type DateFields record {
    int year;
    int month;
    int day;
};

public type Seconds decimal;

type OptionalTimeOfDayFields record {
    int hour?;
    int minute?;
    Seconds second?;
};

public type ZoneOffset readonly & record {|
    int hours;
    int minutes = 0;
    decimal seconds?;
|};

public type DateCustom record {
    *DateFields;
    *OptionalTimeOfDayFields;
    ZoneOffset utcOffset?;
};

configurable DateCustom customDate = ?;
configurable time:Date date = ?;
configurable User user = ?;
configurable string message = "Hello";

public function main() {
    string welcomeMsg = "Hello World!, date" + date.toBalString();
    log:printInfo(welcomeMsg);
}
