.class public final enum Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/analytics/ProfileEventAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProfilePageMetrics"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

.field public static final enum PROFILE_ADDED_ME_PAGE_VIEW:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

.field public static final enum PROFILE_ADD_BY_CAMERAROLL_CLICK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

.field public static final enum PROFILE_ADD_BY_CONTACTS_CLICK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

.field public static final enum PROFILE_ADD_BY_SNAPCODE_CLICK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

.field public static final enum PROFILE_ADD_BY_USERNAME_CLICK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

.field public static final enum PROFILE_ADD_FRIENDS_PAGE_VIEW:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

.field public static final enum PROFILE_ADD_NEARBY_CLICK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

.field public static final enum PROFILE_CONTACT_ADD_CLICK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

.field public static final enum PROFILE_CONTACT_BLOCK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

.field public static final enum PROFILE_CONTACT_NAME_EDIT:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

.field public static final enum PROFILE_CONTACT_UNBLOCK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

.field public static final enum PROFILE_DISPLAY_NAME_CHANGE:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

.field public static final enum PROFILE_EMPTY_ADDRESS_BOOK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

.field public static final enum PROFILE_FRIENDS_REQUESTS_SENT:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

.field public static final enum PROFILE_FRIEND_BLOCK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

.field public static final enum PROFILE_FRIEND_DELETE:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

.field public static final enum PROFILE_FRIEND_NAME_EDIT:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

.field public static final enum PROFILE_FRIEND_REQUEST_ACCEPT:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

.field public static final enum PROFILE_FRIEND_REQUEST_BLOCK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

.field public static final enum PROFILE_FRIEND_REQUEST_DISPLAY:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

.field public static final enum PROFILE_FRIEND_REQUEST_IGNORE:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

.field public static final enum PROFILE_FRIEND_SCORE_DISPLAY:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

.field public static final enum PROFILE_MY_CONTACTS_PAGE_VIEW:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

.field public static final enum PROFILE_PAGE_VIEW:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

.field public static final enum PROFILE_PICTURES_DELETE_PICTURES:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

.field public static final enum PROFILE_PICTURES_PAGE_VIEW:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

.field public static final enum PROFILE_PICTURES_SHARE_PICTURES:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

.field public static final enum PROFILE_PICTURES_TAKE_NEW_PICTURES:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

.field public static final enum PROFILE_SUGGESTED_FRIENDS_REQUEST_HIDDEN:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 127
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    const-string v1, "PROFILE_PAGE_VIEW"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_PAGE_VIEW:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    .line 129
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    const-string v1, "PROFILE_DISPLAY_NAME_CHANGE"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_DISPLAY_NAME_CHANGE:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    .line 133
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    const-string v1, "PROFILE_PICTURES_PAGE_VIEW"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_PICTURES_PAGE_VIEW:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    .line 134
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    const-string v1, "PROFILE_PICTURES_DELETE_PICTURES"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_PICTURES_DELETE_PICTURES:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    .line 135
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    const-string v1, "PROFILE_PICTURES_TAKE_NEW_PICTURES"

    invoke-direct {v0, v1, v7}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_PICTURES_TAKE_NEW_PICTURES:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    .line 136
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    const-string v1, "PROFILE_PICTURES_SHARE_PICTURES"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_PICTURES_SHARE_PICTURES:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    .line 139
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    const-string v1, "PROFILE_ADDED_ME_PAGE_VIEW"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_ADDED_ME_PAGE_VIEW:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    .line 140
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    const-string v1, "PROFILE_FRIEND_REQUEST_DISPLAY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_FRIEND_REQUEST_DISPLAY:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    .line 142
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    const-string v1, "PROFILE_FRIEND_REQUEST_ACCEPT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_FRIEND_REQUEST_ACCEPT:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    .line 143
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    const-string v1, "PROFILE_FRIEND_REQUEST_IGNORE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_FRIEND_REQUEST_IGNORE:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    .line 144
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    const-string v1, "PROFILE_FRIEND_REQUEST_BLOCK"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_FRIEND_REQUEST_BLOCK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    .line 145
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    const-string v1, "PROFILE_FRIEND_BLOCK"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_FRIEND_BLOCK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    .line 148
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    const-string v1, "PROFILE_ADD_FRIENDS_PAGE_VIEW"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_ADD_FRIENDS_PAGE_VIEW:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    .line 149
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    const-string v1, "PROFILE_ADD_BY_USERNAME_CLICK"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_ADD_BY_USERNAME_CLICK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    .line 150
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    const-string v1, "PROFILE_ADD_BY_CONTACTS_CLICK"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_ADD_BY_CONTACTS_CLICK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    .line 151
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    const-string v1, "PROFILE_ADD_BY_SNAPCODE_CLICK"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_ADD_BY_SNAPCODE_CLICK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    .line 152
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    const-string v1, "PROFILE_ADD_BY_CAMERAROLL_CLICK"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_ADD_BY_CAMERAROLL_CLICK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    .line 153
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    const-string v1, "PROFILE_ADD_NEARBY_CLICK"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_ADD_NEARBY_CLICK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    .line 154
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    const-string v1, "PROFILE_FRIENDS_REQUESTS_SENT"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_FRIENDS_REQUESTS_SENT:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    .line 155
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    const-string v1, "PROFILE_CONTACT_ADD_CLICK"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_CONTACT_ADD_CLICK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    .line 158
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    const-string v1, "PROFILE_MY_CONTACTS_PAGE_VIEW"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_MY_CONTACTS_PAGE_VIEW:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    .line 159
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    const-string v1, "PROFILE_FRIEND_SCORE_DISPLAY"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_FRIEND_SCORE_DISPLAY:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    .line 160
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    const-string v1, "PROFILE_FRIEND_NAME_EDIT"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_FRIEND_NAME_EDIT:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    .line 161
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    const-string v1, "PROFILE_FRIEND_DELETE"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_FRIEND_DELETE:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    .line 162
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    const-string v1, "PROFILE_CONTACT_NAME_EDIT"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_CONTACT_NAME_EDIT:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    .line 163
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    const-string v1, "PROFILE_CONTACT_BLOCK"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_CONTACT_BLOCK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    .line 164
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    const-string v1, "PROFILE_CONTACT_UNBLOCK"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_CONTACT_UNBLOCK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    .line 167
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    const-string v1, "PROFILE_SUGGESTED_FRIENDS_REQUEST_HIDDEN"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_SUGGESTED_FRIENDS_REQUEST_HIDDEN:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    .line 170
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    const-string v1, "PROFILE_EMPTY_ADDRESS_BOOK"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_EMPTY_ADDRESS_BOOK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    .line 126
    const/16 v0, 0x1d

    new-array v0, v0, [Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_PAGE_VIEW:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_DISPLAY_NAME_CHANGE:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_PICTURES_PAGE_VIEW:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_PICTURES_DELETE_PICTURES:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_PICTURES_TAKE_NEW_PICTURES:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_PICTURES_SHARE_PICTURES:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_ADDED_ME_PAGE_VIEW:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_FRIEND_REQUEST_DISPLAY:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_FRIEND_REQUEST_ACCEPT:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_FRIEND_REQUEST_IGNORE:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_FRIEND_REQUEST_BLOCK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_FRIEND_BLOCK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_ADD_FRIENDS_PAGE_VIEW:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_ADD_BY_USERNAME_CLICK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_ADD_BY_CONTACTS_CLICK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_ADD_BY_SNAPCODE_CLICK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_ADD_BY_CAMERAROLL_CLICK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_ADD_NEARBY_CLICK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_FRIENDS_REQUESTS_SENT:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_CONTACT_ADD_CLICK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_MY_CONTACTS_PAGE_VIEW:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_FRIEND_SCORE_DISPLAY:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_FRIEND_NAME_EDIT:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_FRIEND_DELETE:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_CONTACT_NAME_EDIT:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_CONTACT_BLOCK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_CONTACT_UNBLOCK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_SUGGESTED_FRIENDS_REQUEST_HIDDEN:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_EMPTY_ADDRESS_BOOK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->$VALUES:[Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;
    .locals 1

    .prologue
    .line 126
    const-class v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->$VALUES:[Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v0}, [Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    return-object v0
.end method
