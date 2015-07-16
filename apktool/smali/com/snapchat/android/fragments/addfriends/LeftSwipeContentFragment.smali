.class public final enum Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

.field public static final enum ADDED_ME_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

.field public static final enum ADDRESS_BOOK_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

.field public static final enum ADDRESS_BOOK_SEARCH_VIEW_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

.field public static final enum ADD_FRIENDS_BY_USERNAME_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

.field public static final enum ADD_FRIENDS_FROM_CAMERAROLL_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

.field public static final enum ADD_FRIENDS_FROM_SCREENSHOT_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

.field public static final enum ADD_FRIENDS_MENU_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

.field public static final enum ADD_NEARBY_FRIENDS_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

.field public static final enum FRIENDS_CONTACTS_TOGGLE_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

.field public static final enum MY_FRIENDS_SEARCH_VIEW_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

.field public static final enum SETTINGS_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;


# instance fields
.field private final a:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 14
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    const-string v1, "ADDED_ME_FRAGMENT"

    const-class v2, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;

    invoke-direct {v0, v1, v4, v2}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->ADDED_ME_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    .line 15
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    const-string v1, "ADD_FRIENDS_MENU_FRAGMENT"

    const-class v2, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;

    invoke-direct {v0, v1, v5, v2}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->ADD_FRIENDS_MENU_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    .line 16
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    const-string v1, "FRIENDS_CONTACTS_TOGGLE_FRAGMENT"

    const-class v2, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;

    invoke-direct {v0, v1, v6, v2}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->FRIENDS_CONTACTS_TOGGLE_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    .line 17
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    const-string v1, "ADDRESS_BOOK_SEARCH_VIEW_FRAGMENT"

    const-class v2, Lcom/snapchat/android/fragments/addfriends/AddressBookSearchViewFragment;

    invoke-direct {v0, v1, v7, v2}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->ADDRESS_BOOK_SEARCH_VIEW_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    .line 18
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    const-string v1, "ADDRESS_BOOK_FRAGMENT"

    const-class v2, Lcom/snapchat/android/fragments/addfriends/AddressBookFragment;

    invoke-direct {v0, v1, v8, v2}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->ADDRESS_BOOK_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    .line 19
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    const-string v1, "ADD_FRIENDS_BY_USERNAME_FRAGMENT"

    const/4 v2, 0x5

    const-class v3, Lcom/snapchat/android/fragments/addfriends/AddFriendsByUsernameFragment;

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->ADD_FRIENDS_BY_USERNAME_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    .line 20
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    const-string v1, "ADD_FRIENDS_FROM_SCREENSHOT_FRAGMENT"

    const/4 v2, 0x6

    const-class v3, Lcom/snapchat/android/fragments/addfriends/AddFriendsBySnapcodeSetupFragment;

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->ADD_FRIENDS_FROM_SCREENSHOT_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    .line 21
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    const-string v1, "ADD_NEARBY_FRIENDS_FRAGMENT"

    const/4 v2, 0x7

    const-class v3, Lcom/snapchat/android/fragments/addfriends/AddNearbyFriendsFragment;

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->ADD_NEARBY_FRIENDS_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    .line 22
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    const-string v1, "MY_FRIENDS_SEARCH_VIEW_FRAGMENT"

    const/16 v2, 0x8

    const-class v3, Lcom/snapchat/android/fragments/addfriends/MyFriendsSearchViewFragment;

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->MY_FRIENDS_SEARCH_VIEW_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    .line 23
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    const-string v1, "SETTINGS_FRAGMENT"

    const/16 v2, 0x9

    const-class v3, Lcom/snapchat/android/fragments/settings/SettingsFragment;

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->SETTINGS_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    .line 24
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    const-string v1, "ADD_FRIENDS_FROM_CAMERAROLL_FRAGMENT"

    const/16 v2, 0xa

    const-class v3, Lcom/snapchat/android/fragments/addfriends/AddFriendsFromCameraRollFragment;

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->ADD_FRIENDS_FROM_CAMERAROLL_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    .line 12
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->ADDED_ME_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->ADD_FRIENDS_MENU_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->FRIENDS_CONTACTS_TOGGLE_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->ADDRESS_BOOK_SEARCH_VIEW_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    aput-object v1, v0, v7

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->ADDRESS_BOOK_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->ADD_FRIENDS_BY_USERNAME_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->ADD_FRIENDS_FROM_SCREENSHOT_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->ADD_NEARBY_FRIENDS_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->MY_FRIENDS_SEARCH_VIEW_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->SETTINGS_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->ADD_FRIENDS_FROM_CAMERAROLL_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->$VALUES:[Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->a:Ljava/lang/Class;

    .line 34
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->$VALUES:[Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    invoke-virtual {v0}, [Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    return-object v0
.end method


# virtual methods
.method public final newInstance()Lcom/snapchat/android/util/fragment/SnapchatFragment;
    .locals 3

    .prologue
    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/fragment/SnapchatFragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-object v0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to create a new instance of LeftSwipeContentFragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final tag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LEFT_SWIPE_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
