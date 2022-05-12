# frozen_string_literal: true

require 'rails_helper'

describe 'GET /graphiti/movies.json' do
  context 'when movies exist' do
    it 'returns movies' do
      create(:movie, id: 1, title: 'Batman')
      create(:movie, id: 2, title: 'Ironman')

      get('/graphiti/movies.json')

      json_body = JSON.parse(response.body)
      expect(json_body['data']).to match_array(
        [
          include(
            'id' => '1',
            'title' => 'Batman'
          ),
          include(
            'id' => '2',
            'title' => 'Ironman'
          )
        ]
      )
    end
  end

  context "when movies DON't exist" do
    it 'returns an empty array' do
      get('/graphiti/movies.json')

      json_body = JSON.parse(response.body)
      expect(json_body['data']).to eq(
        []
      )
    end
  end
end
