import ballerina/log;
import ballerina/time;

public type Value record {
    string value;
    string valueRef;
};

public type Environment record {
    string id;
    EnvType envType;
};

public type EnvType record {
    string id;
    string name;
    string description;
    string environmentTypeUuid;
};

public type ExampleValue record {
    Value value;
    string message;
    string id;
    Environment env;
};

configurable time:Date date = ?;
configurable ExampleValue exampleValue = ?;
configurable string message = "Hello";

public function main() {
    string welcomeMsg = "Hello World!, date" + date.toBalString();
    log:printInfo(welcomeMsg);
}
