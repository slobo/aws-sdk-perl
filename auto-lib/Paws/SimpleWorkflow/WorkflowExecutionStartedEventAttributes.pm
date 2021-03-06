package Paws::SimpleWorkflow::WorkflowExecutionStartedEventAttributes {
  use Moose;
  has childPolicy => (is => 'ro', isa => 'Str', required => 1);
  has continuedExecutionRunId => (is => 'ro', isa => 'Str');
  has executionStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has input => (is => 'ro', isa => 'Str');
  has lambdaRole => (is => 'ro', isa => 'Str');
  has parentInitiatedEventId => (is => 'ro', isa => 'Int');
  has parentWorkflowExecution => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecution');
  has tagList => (is => 'ro', isa => 'ArrayRef[Str]');
  has taskList => (is => 'ro', isa => 'Paws::SimpleWorkflow::TaskList', required => 1);
  has taskPriority => (is => 'ro', isa => 'Str');
  has taskStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has workflowType => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowType', required => 1);
}
1;
