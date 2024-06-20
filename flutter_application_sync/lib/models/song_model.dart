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
      Song(
          songId: 11,
          songTitle: "그건 아마 우리의 잘못은 아닐거야",
          artistName: "백예린",
          albumName: "Our love is great",
          albumPicture: "assets/images/Album_image_OurLoveIsGreat.jpg",
          lyrics: '사실은 나도 잘 모르겠어\n'
              '불안한 마음은 어디에서 태어나\n'
              '우리에게까지 온 건지\n'
              '나도 모르는 새에 피어나\n'
              '우리 사이에 큰 상처로 자라도\n'
              '그건 아마 우리의 잘못은 아닐 거야\n'
              '그러니 우린 손을 잡아야 해\n'
              '바다에 빠지지 않도록\n'
              '끊임없이 눈을 맞춰야 해\n'
              '가끔은 너무 익숙해져 버린\n'
              '서로를 잃어버리지 않도록\n'
              '나도 모르는 새에 피어나\n'
              '우리 사이에 자주 아픔을 줘도\n'
              '그건 아마 우리를 더 크게 해줄 거야\n'
              '그러니 우린 손을 잡아야 해\n'
              '바다에 빠지지 않도록\n'
              '끊임없이 눈을 맞춰야 해\n'
              '가끔은 너무 익숙해져 버린\n'
              '서로를 잃어버리지 않도록\n'
              '익숙해진 아픈 마음들\n'
              '자꾸 너와 날 놓아주지 않아\n'
              '우린 행복할 수 있을까\n'
              '그러니 우린 손을 잡아야 해\n'
              '바다에 빠지지 않도록\n'
              '끊임없이 눈을 맞춰야 해\n'
              '가끔은 너무 익숙해져 버린\n'
              '서로를 잃어버리지 않도록\n',
          voiceRange: "메조소프라노",
          targetAge: "20대",
          targetGender: "여성"),
      Song(
          songId: 12,
          songTitle: "비도 오고 그래서 (Feat. 신용재)",
          artistName: "헤이즈(Heize)",
          albumName: "/// (너 먹구름 비)",
          albumPicture: "assets/images/Album_image_ymb.jpg",
          lyrics: '비도 오고 그래서\n'
              '네 생각이 났어\n'
              '생각이 나서 그래서\n'
              '그랬던거지\n'
              '별 의미 없지\n'
              '오늘은 오랜만에 네 생각을 하는 날이야\n'
              '일부러 난 너와 내가 담겨 있는 노랠 찾아\n'
              '오늘은 슬프거나 우울해도 괜찮은 맘이야\n'
              '어차피 이 밤이 다 지나가면은 별 수도 없이\n'
              '난 또 한 동안은 널 잊고 살테니까\n'
              '내 가슴 속에만 품고 살아갈테니까\n'
              '비도 오고 그래서\n'
              '네 생각이 났어\n'
              '생각이 나서 그래서\n'
              '그랬던거지\n'
              '별 의미 없지\n'
              '우산 속에 숨어서\n'
              '네 집을 지나쳐\n'
              '그 날의 감정을\n'
              '다시 느껴보고파서\n'
              '떨어지는 빗물과\n'
              '시계 초침 소리가\n'
              '방 안 가득 채우면\n'
              '그 때로 난 돌아가\n'
              '차라리 난 이 비가\n'
              '그치지 않았음 해\n'
              '매일 기억 속에 살 수 있게\n'
              '나 널 아프게 했던 못난 놈이니까\n'
              '널 다시 품에 안을 자격도 없으니까\n'
              '비도 오고 그래서\n'
              '네 생각이 났어\n'
              '생각이 나서 그래서\n'
              '그랬던거지\n'
              '별 의미 없지\n'
              '우산 속에 숨어서\n'
              '네 집을 지나쳐\n'
              '그 날의 감정을\n'
              '다시 느껴보고파서\n'
              '우리에게 주어진 행복을\n'
              '너무 빨리 쓴 것 같아\n'
              '거기까지 인 것 같아\n'
              '이 비가 그칠 땐 각자 있던 곳에서\n'
              '다시 살아가야만 해\n'
              '비도 오고 그래서\n'
              '네 생각이 났어\n'
              '생각이 나서 그래서\n'
              '그랬던거지\n'
              '별 의미 없지\n'
              '우산 속에 숨어서\n'
              '네 집을 지나쳐\n'
              '그 날의 감정을\n'
              '다시 느껴보고파서\n',
          voiceRange: "메조소프라노",
          targetAge: "20대",
          targetGender: "여성"),
      Song(
          songId: 13,
          songTitle: "한숨",
          artistName: "이하이",
          albumName: "SEOULITE",
          albumPicture: "assets/images/Album_image_SEOULITE.jpg",
          lyrics: '숨을 크게 쉬어봐요\n'
              '당신의 가슴 양쪽이 저리게\n'
              '조금은 아파올 때까지\n'
              '숨을 더 뱉어봐요\n'
              '당신의 안에 남은 게 없다고\n'
              '느껴질 때까지\n'
              '숨이 벅차올라도 괜찮아요\n'
              '아무도 그댈 탓하진 않아\n'
              '가끔은 실수해도 돼\n'
              '누구든 그랬으니까\n'
              '괜찮다는 말\n'
              '말뿐인 위로지만\n'
              '누군가의 한숨\n'
              '그 무거운 숨을\n'
              '내가 어떻게\n'
              '헤아릴 수가 있을까요\n'
              '당신의 한숨\n'
              '그 깊일 이해할 순 없겠지만\n'
              '괜찮아요\n'
              '내가 안아줄게요\n'
              '숨이 벅차올라도 괜찮아요\n'
              '아무도 그댈 탓하진 않아\n'
              '가끔은 실수해도 돼\n'
              '누구든 그랬으니까\n'
              '괜찮다는 말\n'
              '말뿐인 위로지만\n'
              '누군가의 한숨\n'
              '그 무거운 숨을\n'
              '내가 어떻게\n'
              '헤아릴 수가 있을까요\n'
              '당신의 한숨\n'
              '그 깊일 이해할 순 없겠지만\n'
              '괜찮아요\n'
              '내가 안아줄게요\n'
              '남들 눈엔 힘 빠지는\n'
              '한숨으로 보일진 몰라도\n'
              '나는 알고 있죠\n'
              '작은 한숨 내뱉기도\n'
              '어려운 하루를 보냈단 걸\n'
              '이제 다른 생각은 마요\n'
              '깊이 숨을 쉬어봐요\n'
              '그대로 내뱉어요\n'
              '누군가의 한숨\n'
              '그 무거운 숨을\n'
              '내가 어떻게\n'
              '헤아릴 수가 있을까요\n'
              '당신의 한숨\n'
              '그 깊일 이해할 순 없겠지만\n'
              '괜찮아요\n'
              '내가 안아줄게요\n'
              '정말 수고했어요\n',
          voiceRange: "알토",
          targetAge: "30대",
          targetGender: "여성"),
      Song(
          songId: 14,
          songTitle: "보여줄게",
          artistName: "에일리(Ailee)",
          albumName: "Invitation",
          albumPicture: "Album_image_Invitation.jpg",
          lyrics: '내가 사준 옷을 걸치고\n'
              '내가 사준 향술 뿌리고\n'
              '지금쯤 넌 그녈 만나\n'
              '또 웃고 있겠지\n'
              '그렇게 좋았던 거니\n'
              '날 버리고 떠날 만큼\n'
              '얼마나 더 어떻게\n'
              '더 잘 해야 한 거니\n'
              '너를 아무리 지울래도\n'
              '함께한 날이 얼마인데\n'
              '지난 시간이 억울해서\n'
              '자꾸 눈물이 흐르지만\n'
              '보여줄게 완전히 달라진 나\n'
              '보여줄게 훨씬 더 예뻐진 나\n'
              '바보처럼 사랑 때문에 떠난\n'
              '너 때문에 울지 않을래\n'
              '더 멋진 남잘 만나 꼭 보여줄게\n'
              '너보다 행복한 나\n'
              '너 없이도 슬프지 않아 무너지지 않아\n'
              'boy you gotta be aware\n'
              '산뜻하게 머릴 바꾸고\n'
              '정성 들여 화장도 하고\n'
              '하이힐에 짧은 치마 모두 날 돌아봐\n'
              '우연히 라도 널 만나면\n'
              '눈이 부시게 웃어주며\n'
              '놀란 니 모습 뒤로 한 채\n'
              '또각 또각 걸어가려 해\n'
              '보여줄게 완전히 달라진 나\n'
              '보여줄게 훨씬 더 예뻐진 나\n'
              '바보처럼 사랑 때문에 떠난\n'
              '너 때문에 울지 않을래\n'
              '더 멋진 남잘 만나 꼭 보여줄게\n'
              '너보다 행복한 나\n'
              '너 없이도 슬프지 않아 무너지지 않아\n'
              'boy you gotta be aware\n'
              '니가 줬던 반질 버리고\n'
              '니가 썼던 편질 지우고\n'
              '미련 없이 후회 없이 잊어 줄 거야\n'
              '너를 잊을래 너를 지울래\n'
              '보여줄게 완전히 달라진 나\n'
              '보여줄게 훨씬 더 예뻐진 나\n'
              '바보처럼 사랑 때문에 떠난\n'
              '너 때문에 울지 않을래\n'
              '더 멋진 남잘 만나 꼭 보여줄게\n'
              '너보다 행복한 나\n'
              '너 없이도 슬프지 않아 무너지지 않아\n'
              'boy you gotta be aware\n',
          voiceRange: "알토",
          targetAge: "30대",
          targetGender: "여성"),
      Song(
          songId: 15,
          songTitle: "보고 싶다",
          artistName: "김범수",
          albumName: "3rd. 보고 싶다",
          albumPicture: "assets/images/Album_image_3rd.jpg",
          lyrics: '아무리 기다려도 난 못가\n'
              '바보처럼 울고 있는 너의 곁에\n'
              '상처만 주는 나를 왜 모르고\n'
              '기다리니 떠나가란 말야\n'
              '보고 싶다 보고 싶다\n'
              '이런 내가 미워질만큼\n'
              '울고 싶다 네게 무릎 꿇고\n'
              '모두 없던 일이 될 수 있다면\n'
              '미칠듯 사랑했던 기억이\n'
              '추억들이 너를 찾고 있지만\n'
              '더 이상 사랑이란 변명에\n'
              '너를 가둘 수 없어\n'
              '이러면 안되지만\n'
              '죽을만큼 보고 싶다\n'
              '보고 싶다 보고 싶다\n'
              '이런 내가 미워질만큼\n'
              '믿고 싶다 옳은 길이라고\n'
              '너를 위해 떠나야만 한다고\n'
              '미칠듯 사랑했던 기억이\n'
              '추억들이 너를 찾고 있지만\n'
              '더 이상 사랑이란 변명에\n'
              '너를 가둘수 없어\n'
              '이러면 안되지만\n'
              '죽을만큼 보고 싶다\n'
              '죽을 만큼 잊고 싶다\n',
          voiceRange: "테너",
          targetAge: "30대",
          targetGender: "남자"),
      Song(
          songId: 16,
          songTitle: "고해",
          artistName: "임재범",
          albumName: "Memories...",
          albumPicture: "assets/images/Album_image_Memories.jpg",
          lyrics: '어찌합니까 어떻게 할까요\n'
              '감히 제가 감히 그녀를 사랑합니다\n'
              '조용히 나조차 나조차도 모르게\n'
              '잊은척 살아간다는건 살아도 죽은겁니다\n'
              '세상의 비난도 미쳐보이는 모습도\n'
              '모두다 알지만 그게 두렵지만 사랑합니다\n'
              '어디에 있나요 제 얘기 정말 들리시나요\n'
              '그럼 피 흘리는 가엾은 제 사랑을 알고 계신가요\n'
              '용서해주세요 벌하신다면 저 받을게요\n'
              '허나 그녀만은 제게 그녀 하나만 허락해주소서\n'
              'For God so loved the World\n'
              'that he gave his only begotten Son.\n'
              'That who ever believes in Him\n'
              'should not perish but have everlasting life\n'
              '어디에 있나요 제 얘기 정말 들리시나요\n'
              '그럼 피 흘리는 가엾은 제 사랑을 알고 계신가요\n'
              '용서해주세요 벌하신다면 저 받을게요\n'
              '허나 그녀만은 제게 그녀 하나만 허락해주소서\n'
              '(반복)\n',
          voiceRange: "테너",
          targetAge: "30대",
          targetGender: "남성"),
      Song(
          songId: 17,
          songTitle: "소주 한 잔",
          artistName: "임창정",
          albumName: "Bye",
          albumPicture: "assets/images/Album_image_Bye.jpg",
          lyrics: '술이 한 잔 생각나는 밤 같이 있는 것 같아요\n'
              '그 좋았던 시절들 이젠 모두 한숨만 되네요\n'
              '떠나는 그대 얼굴이 혹시 울지나 않을까\n'
              '나 먼저 돌아섰죠 그때부터 그리워요\n'
              '사람이 변하는 걸요 다시 전보다 그댈 원해요\n'
              '이렇게 취할 때면 꺼져버린 전화를 붙잡고\n'
              '여보세요 나야 거기 잘 지내니 여보세요 왜 말 안하니\n'
              '울고 있니 내가 오랜만이라서 사랑하는 사람이라서\n'
              '그대 소중한 마음 밀쳐낸 이기적인 그때의 나에게\n'
              '그대를 다시 불러오라고 미친 듯이 외쳤어\n'
              '떠나는 그대 얼굴이 마치 처음과 같아서\n'
              '나 눈물이 났어요 그때부터 그리워요\n'
              '사람이 변하는 걸요 다시 전보다 그댈 원해요\n'
              '이렇게 취할때면 바뀌어버린 전화번호 누르고\n'
              '여보세요 나야 거기 잘 지내니 오랜만이야 내 사랑아\n'
              '그대를 다시 불러오라고 미친 듯이 울었어 우-\n'
              '여보세요 나야 정말 미안해 이기적인 그때의 나에게\n'
              '그대를 다시 불러오라고 미친 듯이 외쳤어\n',
          voiceRange: "바리톤",
          targetAge: "40대",
          targetGender: "남성"),
      Song(
          songId: 18,
          songTitle: "옛사랑",
          artistName: "이문세",
          albumName: "이문세 7집 VII",
          albumPicture: "assets/images/Album_image_7zip.jpg",
          lyrics: '남들도 모르게\n'
              '서성이다 울었지\n'
              '지나온 일들이\n'
              '가슴에 사무쳐\n'
              '텅빈 하늘밑 불빛들\n'
              '켜져가면 옛사랑 그이름\n'
              '아껴 불러보네\n'
              '찬바람 불어와\n'
              '옷깃을 여미우다\n'
              '후회가 또 화가\n'
              '난 눈물이 흐르네\n'
              '누가 물어도 아플 것 같지\n'
              '않던 지나온\n'
              '내 모습 모두 거짓인걸\n'
              '이제 그리운 것은\n'
              '그리운대로 내맘에 둘꺼야\n'
              '그대 생각이 나면 생각\n'
              '난 대로 내버려 두듯이\n'
              '흰눈 나리면 들판에\n'
              '서성이다 옛사랑\n'
              '생각에 그길 찾아가지\n'
              '광화문 거리 흰눈에\n'
              '덮여가고 하얀눈\n'
              '하늘 높이 자꾸 올라가네\n'
              '사랑이란게 지겨울\n'
              '때가 있지 내맘에\n'
              '고독이 너무 흘러넘쳐\n'
              '눈 녹은 봄날 푸르른\n'
              '잎새위엔 옛사랑\n'
              '그대모습 영원속에 있네\n',
          voiceRange: "바리톤",
          targetAge: "40대",
          targetGender: "남성"),
      Song(
          songId: 19,
          songTitle: "낭만에 대하여",
          artistName: "최백호",
          albumName: "어이 / 동창회 / 남자에게",
          albumPicture: "assets/images/Album_image_bakho.jpg",
          lyrics: '궂은비 내리는 날\n'
              '그야말로 옛날식 다방에 앉아\n'
              '도라지 위스키 한 잔에다\n'
              '짙은 색소폰 소릴 들어보렴\n'
              '새빨간 립스틱에\n'
              '나름대로 멋을 부린 마담에게\n'
              '실없이 던지는 농담 사이로\n'
              '짙은 섹스폰 소릴 들어보렴\n'
              '이제와 새삼 이 나이에\n'
              '실연의 달콤함이야 있겠냐마는\n'
              '왠지 한 곳이 비어있는\n'
              '내 가슴이 잃어버린 것에 대하여\n'
              '밤늦은 항구에서\n'
              '그야말로 연락선 선창가에서\n'
              '돌아올 사람은 없을지라도\n'
              '슬픈 뱃고동 소리를 들어보렴\n'
              '첫사랑 그 소녀는\n'
              '어디에서 나처럼 늙어갈까\n'
              '가버린 세월이 서글퍼지는\n'
              '슬픈 뱃고동 소릴 들어보렴\n'
              '이제와 새삼 이 나이에\n'
              '청춘의 미련이야 있겠냐마는\n'
              '왠지 한 곳이 비어있는 내 가슴에\n'
              '다시 못 올 것에 대하여\n'
              '낭만에 대하여\n',
          voiceRange: "베이스",
          targetAge: "50대",
          targetGender: "남성"),
      Song(
          songId: 20,
          songTitle: "오래된 노래",
          artistName: "김동률",
          albumName: "Monologue",
          albumPicture: "assets/images/Album_image_Monologue.jpg",
          lyrics: '우연히 찾아낸 낡은 테입속의 노랠 들었어\n'
              '서투른 피아노 풋풋한 목소리\n'
              '수많은 추억에 웃음 짓다\n'
              '언젠가 너에게 생일 선물로 만들어준 노래\n'
              '촌스런 반주에 가사도 없지만\n'
              '넌 아이처럼 기뻐했었지\n'
              '진심이 담겨서 나의 맘이 다 전해진다며\n'
              '가끔 흥얼거리며 눈물을 흘리기도 했지\n'
              '오래된 테입속에 그 때의 내가\n'
              '참 부러워서 그리워서\n'
              '울다가 웃다가 그저 하염없이\n'
              '이 노랠 듣고만 있게 돼 바보처럼\n'
              '널 떠나보내고 거짓말처럼 시간이 흘러서\n'
              '너에게 그랬듯 사람들 앞에서\n'
              '내 노랠 들려주게 되었지\n'
              '참 사랑했다고 아팠다고 그리워한다고\n'
              '우리 지난 추억에 기대어 노래할 때마다\n'
              '네 맘이 어땠을까 라디오에서\n'
              '길거리에서 들었을 때\n'
              '부풀려진 맘과 꾸며진 말들로 행여\n'
              '널 두 번 울렸을까 참 미안해\n'
              '이렇게라도 다시\n'
              '너에게 닿을까 모자란 마음에\n'
              '모질게 뱉어냈던 말들에\n'
              '그 얼마나 힘들어했을지\n'
              '오래된 테입속에 그 때의 내가\n'
              '참 부러워서 그리워서\n'
              '울다가 웃다가 그저 하염없이\n'
              '이 노랠 듣고만 있게 돼 바보처럼\n',
          voiceRange: "베이스",
          targetAge: "30대",
          targetGender: "남성")
    ];
  }
}
