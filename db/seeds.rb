clients = %w(이브자리 현대카드 넥슨 삼성 엘지 구글 애플 폭스바겐)
d = "모든 국민은 법률이 정하는 바에 의하여 국가기관에 문서로 청원할 권리를 가진다. 모든 국민은 언론·출판의 자유와 집회·결사의 자유를 가진다. 모든 국민은 신체의 자유를 가진다."

clients.each do |client|
  p = Project.create!(title: client+" 프로젝트", category: "바이럴 영상", description: d, 
    client: client, made_at: Time.now, website_link: "http://www.minivertising.kr")
  puts p.title
end
