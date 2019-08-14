# frozen_string_literal: true

describe 'sum' do
  subject { sum(a, b) }

  context 'a = 1' do
    let(:a) { 1 }

    context 'b = 1' do
      let(:b) { 1 }

      it { expect(subject).to eq 2 }
    end
    
    context 'b = 5' do
      let(:b) { 5 }

      it { expect(subject).to eq 6 }
    end

    context 'b = nil' do
      let(:b) { nil }

      it { expect(subject).to eq 1 }
    end
  end

  context 'a = nil' do
    let (:a) { nil }
    let (:b) { 6 }
    it { expect(subject).to eq 6 }
  end
end
