describe ApplicationHelper do
  describe 'set_alert_class' do
    it 'returns :success when providing :notice' do
      expect(helper.set_alert_class(:notice)).to eq(:success)
    end

    it 'returns :success when providing :success' do
      expect(helper.set_alert_class(:success)).to eq(:success)
    end

    it 'returns :warning when providing :warning' do
      expect(helper.set_alert_class(:warning)).to eq(:warning)
    end

    it 'returns :info when providing :info' do
      expect(helper.set_alert_class(:info)).to eq(:info)
    end

    it 'returns :danger when providing something else' do
      expect(helper.set_alert_class(:something_else)).to eq(:danger)
    end
  end
end
