.class public final Layj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CHAT_MEDIA_KEYS_AND_IVS:Layh;

.field public static final CREDIT_CARD_TOKEN:Layh;

.field public static final DEVICE_TOKEN_1_KEY_AND_IV:Layh;

.field public static final FRIEND_STORY_KEYS_AND_IVS:Layh;

.field public static final MESSAGING_GATEWAY_INFO:Layh;

.field public static final MY_STORY_KEYS_AND_IVS:Layh;

.field public static final PER_CONVERSATION_AUTH:Layh;

.field public static final SNAPS_ON_EXTERNAL_STORAGE_KEYS_AND_IVS:Layh;

.field public static final SQ_AUTH_TOKEN:Layh;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    new-instance v0, Layh;

    const-string v1, "messagingGatewayInfo"

    sget-object v2, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;->SHOULD_PURGE_ON_LOGOUT:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    invoke-direct {v0, v1, v2}, Layh;-><init>(Ljava/lang/String;Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;)V

    sput-object v0, Layj;->MESSAGING_GATEWAY_INFO:Layh;

    .line 14
    new-instance v0, Layh;

    const-string v1, "perConversationAuth/"

    sget-object v2, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;->SHOULD_PURGE_ON_LOGOUT:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    invoke-direct {v0, v1, v2}, Layh;-><init>(Ljava/lang/String;Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;)V

    sput-object v0, Layj;->PER_CONVERSATION_AUTH:Layh;

    .line 18
    new-instance v0, Layh;

    const-string v1, "myStorySnapKeysAndIvs"

    sget-object v2, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;->SHOULD_PURGE_ON_LOGOUT:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    invoke-direct {v0, v1, v2}, Layh;-><init>(Ljava/lang/String;Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;)V

    sput-object v0, Layj;->MY_STORY_KEYS_AND_IVS:Layh;

    .line 22
    new-instance v0, Layh;

    const-string v1, "snapsOnExternalStorageKeysAndIvs"

    sget-object v2, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;->SHOULD_PURGE_ON_DIFFERENT_USER_LOGIN:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    invoke-direct {v0, v1, v2}, Layh;-><init>(Ljava/lang/String;Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;)V

    sput-object v0, Layj;->SNAPS_ON_EXTERNAL_STORAGE_KEYS_AND_IVS:Layh;

    .line 26
    new-instance v0, Layh;

    const-string v1, "friendStorySnapKeysAndIvs"

    sget-object v2, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;->SHOULD_PURGE_ON_LOGOUT:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    invoke-direct {v0, v1, v2}, Layh;-><init>(Ljava/lang/String;Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;)V

    sput-object v0, Layj;->FRIEND_STORY_KEYS_AND_IVS:Layh;

    .line 30
    new-instance v0, Layh;

    const-string v1, "chatMediaKeysAndIvs"

    sget-object v2, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;->SHOULD_PURGE_ON_LOGOUT:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    invoke-direct {v0, v1, v2}, Layh;-><init>(Ljava/lang/String;Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;)V

    sput-object v0, Layj;->CHAT_MEDIA_KEYS_AND_IVS:Layh;

    .line 34
    new-instance v0, Layh;

    const-string v1, "creditCardToken"

    sget-object v2, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;->SHOULD_PURGE_ON_DIFFERENT_USER_LOGIN:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    invoke-direct {v0, v1, v2}, Layh;-><init>(Ljava/lang/String;Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;)V

    sput-object v0, Layj;->CREDIT_CARD_TOKEN:Layh;

    .line 38
    new-instance v0, Layh;

    const-string v1, "sqAuthToken"

    sget-object v2, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;->SHOULD_PURGE_ON_LOGOUT:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    invoke-direct {v0, v1, v2}, Layh;-><init>(Ljava/lang/String;Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;)V

    sput-object v0, Layj;->SQ_AUTH_TOKEN:Layh;

    .line 42
    new-instance v0, Layh;

    const-string v1, "deviceToken1KeyAndIv"

    sget-object v2, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;->SHOULD_ALWAYS_PERSIST:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    invoke-direct {v0, v1, v2}, Layh;-><init>(Ljava/lang/String;Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;)V

    sput-object v0, Layj;->DEVICE_TOKEN_1_KEY_AND_IV:Layh;

    return-void
.end method
