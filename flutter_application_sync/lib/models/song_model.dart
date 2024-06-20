import 'package:hive/hive.dart';

part 'song_model.g.dart';

@HiveType(typeId: 0)
class Song extends HiveObject {
  @HiveField(0)
  final int songId;

  @HiveField(1)
  final String songTitle;

  @HiveField(2)
  final String artistName;

  @HiveField(3)
  final String albumName;

  @HiveField(4)
  final String albumPicture;

  @HiveField(5)
  final String lyrics;

  @HiveField(6)
  final String voiceRange; // 음역대 필드 추가

  @HiveField(7)
  final String targetAge; // 타겟 나이 필드 추가

  @HiveField(8)
  final String targetGender; // 타겟 성별 필드 추가

  Song({
    required this.songId,
    required this.songTitle,
    required this.artistName,
    required this.albumName,
    required this.albumPicture,
    required this.lyrics,
    required this.voiceRange, // 초기화
    required this.targetAge, // 초기화
    required this.targetGender, // 초기화
  });

  static List<Song> createDummySongList() {
    return [
      Song(
        songId: 1,
        songTitle: "해야 (HEYA)",
        artistName: "IVE",
        albumName: "IVE SWITCH",
        albumPicture: "assets/images/Album_image_iveswitch.jpg",
        lyrics: 'Let\'s get it\n'
            'Look at it\n'
            'Pay attention\n'
            '얼어붙은 맘 어디 깨볼까?\n'
            '놀라버렸던 네 심장 말이야\n'
            '맘에 들었어 넌 그냥 say "Yes"\n'
            '내가 널 부르면 "얼음, 땡" (any remember?)\n'
            '널 노리는 내 두 눈 (uh-huh, ah-ooh)\n'
            '숨을 죽인 그다음 (uh-huh, ah-ooh)\n'
            '한 발 낮춘 attitude (my attitude, ah-ooh)\n'
            '때를 기다리는 pose (ah-ooh)\n'
            '어둠 속 빛난 tiger eyes (ah-ooh)\n'
            '날 감춘 채로 다가가 (ah-ooh)\n'
            '새빨간 말로 홀려 놔 (ah-ooh)\n'
            '방심한 순간 claw\n'
            '우린 더 높이\n'
            '하늘에 닿을 것처럼 외쳐 너를 깨워\n'
            '올려 봐, 노려봐, 넌 내 거니까 다\n'
            '자꾸 널 보면 탐이, 탐이 나\n'
            '해야, 해야, 해야\n'
            '한입에 널 삼킬 때야 (탐이, 탐이 나)\n'
            '해야, 해야, 해야\n'
            '이미 내가 이긴 패야 (널 보면 탐이, 탐이 나)\n'
            '해야, 해야, 해야\n'
            '뜨겁게 떠오르는 해야\n'
            '별안간 홀린 그 순간 bite\n'
            '단 한 번에 난 널 휘리휘리 catch ya\n'
            '휘리휘리, 휘리휘리\n'
            '휘리휘리, 휘리휘리\n'
            '더 붉게, 더 밝게\n'
            '타올라 뜨거워도 좋으니\n'
            '더 높게, 더 높게\n'
            '숨어도 넌 내 손바닥 안이니\n'
            '깊은 어둠이, 짙은 구름이\n'
            '또 긴 밤 아래 널 감출 테니\n'
            'Chew and swallow\n'
            'Get ready for it, baby (listen when I say, yeah)\n'
            '자꾸 널 보면 탐이, 탐이 나\n'
            '해야, 해야, 해야\n'
            '한입에 널 삼킬 때야 yeah (탐이, 탐이 나)\n'
            '해야, 해야, 해야 (oh)\n'
            '이미 내가 이긴 패야 (널 보면 탐이, 탐이 나)\n'
            '해야, 해야, 해야\n'
            '뜨겁게 떠오르는 해야\n'
            '별안간 홀린 그 순간 bite\n'
            'Da-da-da-dun-dun-dun\n',
        voiceRange: "소프라노",
        targetAge: "20대",
        targetGender: "여성",
      ),
      Song(
        songId: 2,
        songTitle: "Says It",
        artistName: "KISS OF LIFE",
        albumName: "Born to be XX",
        albumPicture: "assets/images/Album_image_borntobexx.jpg",
        lyrics: 'We were too young to realize\n'
            'What is happening inside our hearts\n'
            '보이지 않는 문틈에서 두드릴까 망설이던\n'
            '왠지 오랜 시간 마주할 것 같아\n'
            'Every time I see your eyes, yes\n'
            '알지 못할 마음은 커지기만 했지\n'
            'But honesty\'s all we need, honey\n'
            '스치던 네 손끝에 상관없어져\n'
            'No need to hesitate, boy\n'
            '완벽한 scenario는 없는 걸 알면서도 난\n'
            'Just come on closer, be my babe\n'
            'There\'s no time we can waste\n'
            'Only one thing to say\n'
            'Says it, love\n'
            'Say the word, love\n'
            '흑백 같던 내 삶에\n'
            '물들여 줘, what\'s the name?\n'
            'Says it, love\n'
            'Say the word, love\n'
            'Hm, now we here, what can I say?\n'
            '이런 대화는 처음이라 어색하긴 한데\n'
            '나중에 후회하긴 싫어, I won\'t hesitate\n'
            '그러니 알아줬으면 해, I ain\'t play the game\n'
            'Just wanna know, 너도 나와 같을까 과연\n'
            '두 눈이 마주쳤을 때 느꼈던 silence\n'
            'Shh, 고요함 위로 번지는 colors\n'
            '이게 사랑이 아니면, what should I say, darling?\n'
            'But honesty\'s all we need, honey\n'
            '비치던 네 표정에 신경 쓰지만\n'
            'No need to be afraid, boy\n'
            '내 맘속 scenario 마지막엔 네가 있어\n'
            'Just come on closer, be my babe\n'
            'There\'s no time we can waste\n'
            'Only one thing to say\n'
            'Says it, love\n'
            'Say the word, love\n'
            '흑백 같던 내 삶에\n'
            '물들여 줘, what\'s the name?\n'
            'Says it, love\n'
            'Say the word, love\n'
            'Hey, 끝끝내 삼킨 그 말\n'
            'All the things that you showed me was love\n'
            'Says it, love (ooh, yeah)\n'
            'There\'s no time we can waste\n'
            'Only one thing to say (ooh)\n'
            'Says it, love (oh, love)\n'
            'Say the word, love (say it, love)\n'
            '부럽지 않아 다른 건 (oh-oh)\n'
            '우리만의 글을 써 (oh-oh-oh)\n'
            'Says it, love\n'
            'Say the word, love (say it, oh-oh-oh)\n'
            'I just wanna be right on your side\n'
            '그저 어디서든지, I\'ll be your pride\n'
            'Oh, just say it, right now\n'
            'Says it, love\n'
            'Always wanna be right on your side\n'
            '그저 어디서든지, I\'ll be your fire\n'
            'Says it, love\n'
            'Say the word, love\n'
            'Hey, 이젠 나 알 것 같아\n'
            'All the things that you taught me was love\n'
            'Mm-mm\n',
        voiceRange: "메조소프라노",
        targetAge: "20대",
        targetGender: "여성",
      ),
      Song(
        songId: 3,
        songTitle: "OMG",
        artistName: "New Jeans",
        albumName: "NJWMX",
        albumPicture: "assets/images/Album_image_NJWMX.jpg",
        lyrics: '이 노래는 it\'s about you, baby\n'
            'Only you\n'
            'You, you, you, you, you, you, you\n'
            '내가 힘들 때, 울 것 같을 때\n'
            '기운도 이젠 나지 않을 때\n'
            '(It\'s you) 날 걱정하네, (it\'s you) 날 웃게하네\n'
            '말 안 해도 돼, boy, what do you say?\n'
            '멀리든 언제든지 달려와\n'
            '(They keep on asking me, "who is he?")\n'
            '바쁜 척도 없이 넌 나타나\n'
            '(They keep on asking me, "who is he?")\n'
            '"이게 말이 되니?" 난 물어봐\n'
            '(They keep on asking me, "who is he?")\n'
            '너는 말야, he\'s the one that\'s living in my system, baby\n'
            'Oh my, oh my God! 예상했어 나\n'
            'I was really hoping that he will come through\n'
            'Oh my, oh my God! 단 너뿐이야\n'
            'Asking all the time about what I should do\n'
            'No, I can never let him go, 너만 생각나 24\n'
            '난 행운아야 정말로, I know, I know\n'
            '널 알기 전까지는 나, 의미 없었어 전부 다\n'
            '내 맘이 끝이 없는 걸, I know, I know\n'
            'I\'m going crazy, right?\n'
            '어디서든, 몇 번이든\n'
            'There ain\'t nothing else that I would hold on to\n'
            'I hear his voice through all the noise\n'
            '잠시라도 내 손 놓지 마, no, no\n'
            '걱정 없잖아 \'cause I got someone\n'
            '혼자라도 괜찮아 \'cause I love someone\n'
            '멀리든 언제든지 달려와\n'
            '(They keep on asking me, "who is he?")\n'
            '바쁜 척도 없이 넌 나타나\n'
            '(They keep on asking me, "who is he?")\n'
            '"이게 말이 되니?" 난 물어봐\n'
            '(They keep on asking me, "who is he?")\n'
            '너는 말야, he\'s the one that\'s living in my system, baby\n'
            'Oh my, oh my God! 예상했어 나\n'
            'I was really hoping that he will come through\n'
            'Oh my, oh my God! 단 너뿐이야\n'
            'Asking all the time about what I should do\n'
            'No, I can never let him go, 너만 생각나 24\n'
            '난 행운아야 정말로, I know, I know\n'
            '널 알기 전까지는 나, 의미 없었어 전부 다\n'
            '내 맘이 끝이 없는 걸, I know, I know\n'
            'He\'s the one that\'s living in my system, baby\n'
            'Baby, baby\n'
            'Bab-baby (I\'m going crazy, right?)\n'
            'Baby, baby (I\'m going crazy, right?)\n'
            'Bab-baby (너와 나)\n'
            'My heart is glowing, it\'s glowing up (glowing up)\n'
            '너랑만 있으면 무서울 게 없어 (glowing up)\n'
            '가득 메워진, 다 메워진 (붉어진)\n'
            'My heart is glowing, it\'d be glowing (\'cause he!)\n'
            'Oh my, oh my God! 예상했어 나\n'
            'I was really hoping that he will come through\n'
            'Oh my, oh my God! 단 너뿐이야\n'
            'Asking all the time about what I should do (너와 나)\n'
            'No, I can never let him go, he\'s right there for me, 24\n'
            '난 행운아야 정말로, I know, I know (너와 나)\n'
            '널 알기 전까지는 나, 의미 없었어 전부 다, 어떡해\n'
            'My heart is glowing, it\'s glowing\n'
            'My heart is glowing up, so I can\'t sleep at night\n',
        voiceRange: "메조소프라노",
        targetAge: "10대",
        targetGender: "여성",
      ),
      Song(
        songId: 4,
        songTitle: "고민중독",
        artistName: "QWER",
        albumName: "MANITO",
        albumPicture: "assets/images/Album_image_MANITO.jpg",
        lyrics: 'One! Two! Q! W! E! R!\n'
            '어떤 인사가 괜찮을까 천 번쯤 상상해 봤어\n'
            '근데 오늘도 천 번 하고 한 번 더 고민 중\n'
            '막상 네 앞에 서니 꽁꽁 얼어버렸다\n'
            '숨겨왔던 나의 맘 절반의 반도 주지를 못했어\n'
            '아, 아, 아직은\n'
            '준비가 안됐다구요\n'
            '소용돌이쳐 어지럽다구\n'
            '쏟아지는 맘을 멈출 수가 없을까?\n'
            '너의 작은 인사 한마디에 요란해져서\n'
            '네 맘의 비밀번호 눌러 열고 싶지만\n'
            '너를 고민고민해도 좋은 걸 어쩌니\n'
            '거울 앞에서 새벽까지 연습한 인사가\n'
            '손을 들고 웃는 얼굴을 하고서 고개를 숙였다\n'
            '아, 아, 아직도 준비가 안됐나 봐요\n'
            '소용돌이쳐 어지럽다구\n'
            '쏟아지는 맘을 멈출 수가 없을까?\n'
            '너의 작은 인사 한마디에 요란해져서\n'
            '네 맘의 비밀번호 눌러 열고 싶지만\n'
            '너를 고민고민해도 좋은 걸\n'
            '이러지도 저러지도 못하는데\n'
            '속이 왈칵 뒤집히고\n'
            '이쯤 왔으면 눈치 챙겨야지\n'
            '날 봐달라구요!\n'
            '좋아한다 너를 좋아한다 좋아해\n'
            '너를 많이 많이 좋아한단 말이야\n'
            '벅차오르다 못해 내 맘이 쿡쿡 아려와\n'
            '두 번은 말 못 해 너 지금 잘 들어봐\n'
            '매일 고민하고 연습했던 말\n'
            '좋아해\n',
        voiceRange: "메조소프라노",
        targetAge: "10대",
        targetGender: "여성",
      ),
      Song(
        songId: 5,
        songTitle: "Better Things",
        artistName: "aespa",
        albumName: "Better Things",
        albumPicture: "assets/images/Album_image_betterthings.jpg",
        lyrics: 'Oh, oh-oh-oh, got better things to do with my time\n'
            'Better things to do with my time, do with my time than you\n'
            'Oh-oh, I got better things to do with my time\n'
            'Better things to do with my time, do with my time\n'
            'I wasn\'t ever sure that I loved you\n'
            'But I was always sure you would let me down\n'
            'Wasn\'t ever sure if I\'d trust you\n'
            'But I\'m so goddamn sure my energy is just too precious to waste\n'
            'So, now you, now you wanna\n'
            'Know me, wanna know me\n'
            'Wanna know all about me, wanna know about me\n'
            'But he can\'t have me \'cause I left him alone\n'
            'You know you wanna know me, wanna know me\n'
            'Wanna know all about me, wanna know about me\n'
            'But he can\'t have me \'cause I\'m gone, no-no, know\n'
            'That I, I-I-I got better things to do with my time\n'
            'Better things to do with my time, do with my time than you\n'
            'Oh-oh, I got better things to do with my time\n'
            'Better things to do with my time, do with my time than you (break it down)\n'
            'Oh-oh, I, better things to do with my time\n'
            'Better things to do with my time, do with my time than you (yes)\n'
            'Tell a boy bye now, just like how my hair waves\n'
            'I ain\'t tell you straight, I\'ll tell you all over the airwaves\n'
            'Said you love me, but your head ain\'t in the right place\n'
            'Funny, \'cause it\'s true, I think you hit it on her bed frame\n'
            'You come to my city, link girls, think it won\'t get back to me, boy, I digress\n'
            'Left a Prada bag fresh in the box in your hallway\n'
            'It\'s a gift for the poor girl that you hurt next\n'
            'Still you wanna know me, wanna hold me\n'
            'Wanna call to console me, Taylor Swift once said a bar\n'
            'I\'ma borrow it, \'cause the old RAYE can\'t come to the phone right now\n'
            'Since she\'s dead (I left him alone)\n'
            'And I would wish you the best (wish you the best)\n'
            'But I can\'t find the space in my schedule to do this, hmm\n'
            'That I, I-I-I got better things to do with my time\n'
            'Better things to do with my time, do with my time than you\n'
            'Oh-oh, I got better things to do with my time\n'
            'Better things to do with my time, do with my time (break it down)\n'
            'I\'m sorry that it hurts you\n'
            'No, I\'m sorry I ain\'t sorry\n'
            'Aespa, big girls making money\n'
            'Aespa, you\'re our number one fan now\n'
            'You can only see me at a sold-out shows (sold-out shows)\n'
            'Will I ever go back? (No)\n'
            'Will I ever trip up? (No)\n'
            'Will I ever pull up on him? (No)\n'
            'Watch and see, \'bout to throw another rhythm on him (oh, that I)\n'
            'I, I-I-I got better things to do with my time\n'
            'Better things to do with my time, do with my time than you (yes)\n'
            'Oh-oh, I got better things to do with my time\n'
            'Better things to do with my time, do with my time (break it down, hey)\n'
            'I got better (hey) things to do\n'
            'With my time (hey)\n'
            'I got better (hey) things to do\n'
            'With my time\n'
            'I\'m sorry that it hurts you\n'
            'No, I\'m sorry I ain\'t sorry\n'
            'Aespa, big girls making money\n'
            'Aespa, you\'re our number one fan now\n'
            'You can only see me at a sold-out shows (sold-out shows)\n'
            'Will I ever go back? (No)\n'
            'Will I ever trip up? (No)\n'
            'Will I ever pull up on him? (No)\n'
            'Watch and see, \'bout to throw another rhythm on him\n'
            '(Rhythm on him, rhythm on him, rhythm on him, rhythm on-)\n',
        voiceRange: "메조소프라노",
        targetAge: "10대",
        targetGender: "여성",
      ),
      Song(
        songId: 6,
        songTitle: "재연 (An Encore)",
        artistName: "SHINee(샤이니)",
        albumName: "Odd - The 4th Album",
        albumPicture: "assets/images/Album_image_odd.jpg",
        lyrics: '물감이 번져 가는 듯\n'
            '하루씩 또렷해져\n'
            '거꾸로 시간이 흐른 듯\n'
            '오히려 선명해져\n'
            '기억의 강을 건너면\n'
            '잊을 수 있을 거란\n'
            '헛된 믿음도 헛된 희망도\n'
            '이젠 버렸어\n'
            '침묵의 메아리\n'
            '(그 속에 잠긴)\n'
            '메마른 두 입술\n'
            '(그 안에 담긴)\n'
            '길었던 이야기만큼\n'
            '허무했던 우리의 안녕\n'
            '익숙함이 준 당연함 속에\n'
            '우리 사랑은 야윈 달처럼\n'
            '희미해져\n'
            '진심이 아닌 모진 독설로\n'
            '그리 서로를\n'
            '아프게 했던 시절\n'
            '자욱이 쌓인 무관심 속에\n'
            '우리 사랑은 시든 꽃처럼\n'
            '초라해져\n'
            '얼마나 소중한 줄 모르고\n'
            '쓸쓸히 바래진\n'
            '너와 나의 계절\n'
            '세월은 무섭게 흘러\n'
            '모두 변해가지만\n'
            '변하지 않는 단 한 가지만\n'
            '분명해져 가\n'
            '어설픈 방랑과\n'
            '(낯설은 여정)\n'
            '오랜 표류 끝에\n'
            '(그 길의 끝에)\n'
            '마지막 숨을 내쉬는\n'
            '내 결론은 오직 한 사람\n'
            '익숙함이 준 당연함 속에\n'
            '우리 사랑은 야윈 달처럼\n'
            '희미해져\n'
            '진심이 아닌 모진 독설로\n'
            '그리 서로를\n'
            '아프게 했던 시절\n'
            '자욱이 쌓인 무관심 속에\n'
            '우리 사랑은 시든 꽃처럼\n'
            '초라해져\n'
            '얼마나 소중한 줄 모르고\n'
            '쓸쓸히 바래진\n'
            '너와 나의 계절\n'
            '그래 아직도 난 꿈을 꿔\n'
            '짙은 어둠이 걷힌 후엔\n'
            '아침 햇살 위로\n'
            '빛나던 그날의 너와 나\n'
            '재연될 거야\n'
            '되물어 봐도 늘 같은 해답\n'
            '길을 잃어버린 듯\n'
            '여전히 널 찾아 헤매\n'
            '태어난 순간 혹 세상이\n'
            '시작된 날부터\n'
            '정해진 운명처럼\n'
            '되돌려보자 다 제자리로\n'
            '우리 더는 정답\n'
            '아닌 길로 가지 말자\n'
            '다시 막이 오르는 무대처럼\n'
            '눈물 났던 영화의 속편처럼\n'
            '결국 이뤄지는\n'
            '두 주인공처럼\n',
        voiceRange: "테너",
        targetAge: "20대",
        targetGender: "남성",
      ),
      Song(
        songId: 7,
        songTitle: "I’m Crying (Korean Ver.)",
        artistName: "태민(TAEMIN)",
        albumName: "MOVE-ing - The 2nd Album Repackage",
        albumPicture: "assets/images/Album_image_move.jpg",
        lyrics: '가라앉은 정적 속\n'
            '텅 비어버린 방에 울리는 심장소리\n'
            '외로움으로 애타게 노래하듯\n'
            '우는 창 밖의 이 빗소리\n'
            '이젠 너는 없다고\n'
            '너는 없다고 맘을 달래 보지만\n'
            '여전한 네 잔상을 쫓아야 하는 걸\n'
            'Ah 차가운 빗속에서 젖어 떨던 너의\n'
            '그 조그맣던 어깨에 닿았던 그 날이\n'
            '내겐 아직 어제의 일인 것 같은데\n'
            'I\'m crying I\'m crying\n'
            'I\'m crying cause I miss you\n'
            '너의 눈동자는 이젠 나를 보지 않잖아\n'
            '유리처럼 투명히 통과 시킬 뿐이잖아 ah\n'
            '제발 부탁이니까 내게 돌아와\n'
            '차라리 내 곁에서 날 힘들게 해줘\n'
            '내가 널 포기할 수 있게\n'
            '네 맘 속엔 멎는 법을 잊은 듯 내리던 비\n'
            '너의 우산이 되지 못한 부족했었던 나\n'
            '그치지 않는 비를 향한 노래 사랑한다고\n'
            '네 눈물을 알면서도 모른 척\n'
            '무심히 외면했던 순간도\n'
            '내 멋대로 혼자 그린\n'
            '미래만을 향해 달려가던 마음도\n'
            '이젠 오직 너만이 오직 너만이\n'
            '내가 원한 모든 것 이제서야 알 것 같아\n'
            '난 너의 마음을 ah\n'
            '아득히 번져가는 당연했던 우리\n'
            '늘 따스하게 왼손을 채워주던 온기\n'
            '아직 내 가슴이 널 기억하잖아\n'
            'I\'m trying I\'m trying\n'
            'I\'m trying to forget you\n'
            '모든 기억들을 가슴에 담아두고 싶어\n'
            '젖은 머리카락의 향기 살짝 스쳐갈 때 ah\n'
            '제발 부탁이니까 한 번이라도\n'
            '너의 손을 잡고 다시 걷게 된다면\n'
            '달라진 날 맹세 할 텐데\n'
            '어느새 내 맘에도 멈추지 않는 빗소리\n'
            '영원하게만 느껴지는 너 없는 시간도\n'
            '그치지 않는 비를 향한 노래 사랑한다고\n'
            '너도 어딘가에서 같은 하늘을 보겠지\n'
            '마치 네 사랑을 닮은 듯 따뜻한 비가 내려 와\n'
            '슬픈 맘도 후회도 모두 천천히 흘려 보내줘\n'
            'I\'m crying I\'m crying\n'
            'I\'m crying cause I\'m missing you\n'
            '이런 내 맘속에 내리는 비\n'
            '언젠가는 멈출 거야 그때\n'
            '너의 눈동자는 지금 어딜 향해 있는지\n'
            '유리처럼 투명한 그 눈빛도 여전한지 ah\n'
            '제발 부탁이니까 내게 돌아와\n'
            '차라리 내 곁에서 날 힘들게 해줘\n'
            '내가 널 포기할 수 있게\n'
            '네 맘 속엔 멎는 법을 잊은 듯 내리던 비\n'
            '너의 우산이 되지 못한 부족했었던 나\n'
            '그치지 않는 비를 향한 노래 사랑한다고\n',
        voiceRange: "테너",
        targetAge: "20대",
        targetGender: "남성",
      ),
      Song(
        songId: 8,
        songTitle: "잔소리 (With 2AM 슬옹)",
        artistName: "아이유(IU)",
        albumName: "잔소리",
        albumPicture: "assets/images/Album_image_jansori.jpg",
        lyrics: '늦게 다니지좀 마\n'
            '술은 멀리좀 해봐\n'
            '열살짜리 애처럼 말을 안듣니\n'
            '정말 웃음만 나와\n'
            '누가 누굴보고 아이라 하는지\n'
            '정말 웃음만 나와\n'
            '싫은 얘기 하게 되는 내 맘을 몰라\n'
            '좋은 얘기만 나누고 싶은 내 맘을 몰라\n'
            '그만할까? 그만하자\n'
            '하나부터 열까지 다 널 위한 소리\n'
            '내 말 듣지 않는 너에게는 뻔한 잔소리\n'
            '그만하자 그만하자\n'
            '사랑하기만해도 시간 없는데\n'
            '머리 아닌 가슴으로 하는 이야기\n'
            '니가 싫다 해도 안 할수가 없는 이야기\n'
            '그만하자 그만하자\n'
            '너의 잔소리만 들려\n'
            '밥은 제 때 먹는지\n'
            '여잔 멀리 하는지\n'
            '온 종일을 네 옆에 있고 싶은데\n'
            '내가 그 맘인거야\n'
            '주머니속에 널 넣고 다니면\n'
            '정말 행복할텐데\n'
            '둘이 아니면 안되는 우리 이야기\n'
            '누가 듣는다면 놀려대고 웃을 이야기\n'
            '그만할까? 그만하자\n'
            '하나부터 열까지 다 널 위한 소리\n'
            '내 말 듣지 않는 너에게는 뻔한 잔소리\n'
            '그만하자 그만하자\n'
            '사랑하기만해도 시간 없는데\n'
            '머리 아닌 가슴으로 하는 이야기\n'
            '니가 싫다 해도 안 할수가 없는 이야기\n'
            '그만하자 그만하자\n'
            '나의 잔소리가 들려?\n'
            '눈에 힘을 주고 겁을 줘봐도\n'
            '내겐 그저 귀여운 얼굴\n'
            '이럴래 자꾸(자꾸 너) 더는 못 참고(참고 나)\n'
            '정말 화낼지 몰라\n'
            '사랑하다 말거라면 안 할 이야기\n'
            '누구보다 너를 생각하는 마음의 소리\n'
            '화가 나도 소리 쳐도\n'
            '너의 잔소리마저 난 달콤한데\n'
            '사랑해야 할 수 있는 그런 이야기\n'
            '내 말 듣지 않는 너에게는 뻔한 잔소리\n'
            '그만하자 그만하자\n'
            '이런 내 맘을 믿어줘\n',
        voiceRange: "메조소프라노",
        targetAge: "20대",
        targetGender: "여성",
      ),
      Song(
        songId: 9,
        songTitle: "좋은 날",
        artistName: "아이유",
        albumName: "Real",
        albumPicture: "assets/images/Album_image_real.jpg",
        lyrics: '어쩜 이렇게 하늘은 더 파란 건지\n'
            '오늘따라 왜 바람은 또 완벽한지\n'
            '그냥 모르는 척 하나 못들은 척\n'
            '지워버린 척 딴 얘길 시작할까\n'
            '아무 말 못하게 입맞출까\n'
            '눈물이 차올라서 고갤 들어\n'
            '흐르지 못하게 또 살짝 웃어\n'
            '내게 왜 이러는지 무슨 말을 하는지\n'
            '오늘 했던 모든 말 저 하늘 위로\n'
            '한번도 못했던 말 울면서 할 줄은 나 몰랐던 말\n'
            '나는요 오빠가 좋은 걸 어떡해\n'
            '새로 바뀐 내 머리가 별로였는지\n'
            '입고 나왔던 옷이 실수였던 건지\n'
            '아직 모르는 척 기억 안 나는 척\n'
            '아무 일없던 것처럼 굴어볼까\n'
            '그냥 나가자고 얘기할까\n'
            '눈물이 차올라서 고갤 들어\n'
            '흐르지 못하게 또 살짝 웃어\n'
            '내게 왜 이러는지 무슨 말을 하는지\n'
            '오늘 했던 모든 말 저 하늘 위로\n'
            '한번도 못했던 말 울면서 할 줄은 나 몰랐던 말\n'
            '나는요 오빠가 좋은 걸 (휴) 어떡해\n'
            '이런 나를 보고 그런 슬픈 말은 하지 말아요 (하지 말아요)\n'
            '철없는 건지 조금 둔한 건지 믿을 수가 없는걸요\n'
            '눈물은 나오는데 활짝 웃어\n'
            '네 앞을 막고서 막 크게 웃어\n'
            '내가 왜 이러는지 부끄럼도 없는지\n'
            '자존심은 곱게 접어 하늘위로\n'
            '한 번도 못했던 말 어쩌면 다신 못할 바로 그 말\n'
            '나는요 오빠가 좋은 걸 (아이쿠, 하나 둘)\n'
            'I\'m in my dream\n'
            '(It\'s too beautiful, too beautiful day)\n'
            '(Make it a good day)\n'
            '(Just don\'t make me cry)\n'
            '이렇게 좋은 날\n',
        voiceRange: "소프라노",
        targetAge: "20대",
        targetGender: "여성",
      ),
      Song(
        songId: 10,
        songTitle: "만약에",
        artistName: "태연 (TAEYEON)",
        albumName: "쾌도 홍길동 (KBS 수목드라마)",
        albumPicture: "assets/images/Album_image_manya.jpg",
        lyrics: '만약에 내가 간다면\n'
            '내가 다가간다면\n'
            '넌 어떻게 생각할까\n'
            '용길 낼 수 없고\n'
            '만약에 네가 간다면\n'
            '네가 떠나간다면\n'
            '널 어떻게 보내야 할지\n'
            '자꾸 겁이 나는걸\n'
            '\n'
            '내가 바보 같아서\n'
            '바라볼 수 밖에만 없는 건 아마도\n'
            '외면할지도 모를 네 마음과\n'
            '또 그래서 더 멀어질 사이가 될까봐\n'
            '\n'
            '정말 바보 같아서\n'
            '사랑한다 하지 못하는 건 아마도\n'
            '만남 뒤에 기다리는 아픔에\n'
            '슬픈 나날들이 두려워서인가봐\n'
            '\n'
            '만약에 네가 온다면\n'
            '네가 다가온다면\n'
            '난 어떻게 해야만 할지\n'
            '정말 알 수 없는 걸\n'
            '\n'
            '내가 바보 같아서\n'
            '바라볼 수 밖에만 없는 건 아마도\n'
            '외면할지도 모를 네 마음과\n'
            '또 그래서 더 멀어질 사이가 될까봐\n'
            '\n'
            '정말 바보 같아서\n'
            '사랑한다 하지 못하는 건 아마도\n'
            '만남 뒤에 기다리는 아픔에\n'
            '슬픈 나날들이 두려워서인가봐\n'
            '\n'
            '내가 바보 같아서\n'
            '사랑한다 하지 못하는 건 아마도\n'
            '만남 뒤에 기다리는 아픔에\n'
            '슬픈 나날들이 두려워서인가봐',
        voiceRange: "소프라노",
        targetAge: "30대",
        targetGender: "여성",
      ),
    ];
  }
}
