# frozen_string_literal: true

require 'rails_helper'

describe 'POST /graphql#movies' do
  context 'when movies exist' do
    it 'returns movies' do
      create(:movie, id: 1, title: 'Batman')
      create(:movie, id: 2, title: 'Ironman')
      query = <<~GQL
        {
          movies {
            id
            title
          }
        }
      GQL

      post('/graphql/', params: { query: })

      json_body = JSON.parse(response.body)
      expect(json_body).to eq(
        {
          'movies' => [{
            'id' => '1', 'title' => 'Batman'
          }, {
            'id' => '2', 'title' => 'Ironman'
          }]
        }
      )
    end
  end

  context "when movies DON't exist" do
    it 'returns an empty array' do
      query = <<~GQL
        {
          movies {
            id
            title
          }
        }
      GQL

      post('/graphql/', params: { query: })

      json_body = JSON.parse(response.body)
      expect(json_body['data']).to eq(
        {
          'movies' => []
        }
      )
    end
  end
end
