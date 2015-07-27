require 'spec_helper'

describe HL7::Message::Segment::ZPS do
  let(:zps_segment){
    %[ZPS|1|-8|Oklahoma City|840 Research Parkway^^Oklahoma City^OK^73104|4055551212|contact|M.D.^O'DOWD^G.^J^^^M.D.|mnemo|42]
  }

  let(:zps){
    HL7::Message::Segment::ZPS.new( zps_segment )
  }

  it 'creates a ZPS segment' do
    expect(zps).to_not be_nil
  end

  it 'converts the segment to a string' do
    expect(zps.to_s).to eq zps_segment
  end

  it 'allows access to an ZPS segment' do
    expect(zps.set_id).to eq '1'
    expect(zps.facility_footnote_code).to eq '-8'
    expect(zps.facility_name).to eq 'Oklahoma City'
    expect(zps.facility_address).to eq '840 Research Parkway^^Oklahoma City^OK^73104'
    expect(zps.facility_phone_number).to eq '4055551212'
    expect(zps.facility_contact).to eq 'contact'
    expect(zps.facility_director).to eq "M.D.^O'DOWD^G.^J^^^M.D."
    expect(zps.facility_lab_code).to eq 'mnemo'
    expect(zps.facility_clia_number).to eq '42'
  end
end
