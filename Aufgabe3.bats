#!/usr/bin/env bats

@test "It Works" {
    # Arrange
    # Prepare "the world" for your test
    source ./Aufgabe3.sh test

    # Act
    # Run your code
    myVol=90
    setVolume $myVol
    result="$(getVolume)"

    # Assert
    # Make assertions to ensure that the code does what it should
    [ "$result" -gt 89 ]
}