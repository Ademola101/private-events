require 'rails_helper'
RSpec.describe Event, type: :model do
  subject { Event.new(title: 'prom', location: 'Abuja', date: Date.current) }
  before { subject.save }
  it 'title should be present' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
  it 'location should be present' do
    subject.location = nil
    expect(subject).not_to be_valid
  end
end
