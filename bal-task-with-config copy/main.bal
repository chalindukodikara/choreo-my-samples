import ballerina/log;
import ballerina/time;

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

configurable time:Date date = ?;
configurable User user = ?;
configurable string message = "Hello";

public function main() {
    string welcomeMsg = "Hello World!, date" + date.toBalString();
    log:printInfo(welcomeMsg);
}
