require 'spec_helper'

RSpec.describe Stack do
  let(:stack) { Stack.new }

  describe('#push') do
    subject { stack.push 1 }
    it { expect(subject).to eq stack }
  end

  describe('#pop') do
    subject { stack.pop }

    context('空の stack') do
      it { expect(subject).to eq nil }
    end

    context('1 を push 済みの stack') do
      before { stack.push 1 }
      it { expect(subject).to eq 1 }
    end

    context('1 と 5 を push 済みの stack') do
      before do
        stack.push 1
        stack.push 5
      end
      it { expect(subject).to eq 5 }
    end
  end

  describe('#length') do
    subject { stack.length }

    context('1 を push 済みの stack') do
      before { stack.push 1 }
      it{ expect(subject).to eq 1 }
    end

    context('1 と 5 を push 済みの stack') do
      before do
        stack.push 1
        stack.push 5
      end
      it{ expect(subject).to eq 2 }
    end
  end

  describe('#empty?') do
    subject { stack.empty? }

    context('空の stack') do
      it{ expect(subject).to eq true }
    end

    context('1 を push 済みの stack') do
      before { stack.push 1 }
      it{ expect(subject).to eq false }
    end
  end

  describe('#clear') do
    subject { stack.clear }

    context('空の stack') do
      it{ expect(subject).to eq stack }
    end

    context('1 と 5 を push 済みの stack') do
      before do
        stack.push 1
        stack.push 5
      end
      it{ expect(subject.length).to eq 0 }
    end
  end
end