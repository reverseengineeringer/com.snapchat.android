.class public final Lazh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CHAT_MEDIA_KEYS_AND_IVS:Lazf;

.field public static final CREDIT_CARD_TOKEN:Lazf;

.field public static final DEVICE_TOKEN_1_KEY_AND_IV:Lazf;

.field public static final FRIEND_STORY_KEYS_AND_IVS:Lazf;

.field public static final MESSAGING_GATEWAY_INFO:Lazf;

.field public static final MY_STORY_KEYS_AND_IVS:Lazf;

.field public static final PER_CONVERSATION_AUTH:Lazf;

.field public static final SNAPS_ON_EXTERNAL_STORAGE_KEYS_AND_IVS:Lazf;

.field public static final SQ_AUTH_TOKEN:Lazf;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    new-instance v0, Lazf;

    const-string v1, "messagingGatewayInfo"

    sget-object v2, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;->SHOULD_PURGE_ON_LOGOUT:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    invoke-direct {v0, v1, v2}, Lazf;-><init>(Ljava/lang/String;Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;)V

    sput-object v0, Lazh;->MESSAGING_GATEWAY_INFO:Lazf;

    .line 14
    new-instance v0, Lazf;

    const-string v1, "perConversationAuth/"

    sget-object v2, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;->SHOULD_PURGE_ON_LOGOUT:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    invoke-direct {v0, v1, v2}, Lazf;-><init>(Ljava/lang/String;Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;)V

    sput-object v0, Lazh;->PER_CONVERSATION_AUTH:Lazf;

    .line 18
    new-instance v0, Lazf;

    const-string v1, "myStorySnapKeysAndIvs"

    sget-object v2, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;->SHOULD_PURGE_ON_LOGOUT:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    invoke-direct {v0, v1, v2}, Lazf;-><init>(Ljava/lang/String;Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;)V

    sput-object v0, Lazh;->MY_STORY_KEYS_AND_IVS:Lazf;

    .line 22
    new-instance v0, Lazf;

    const-string v1, "snapsOnExternalStorageKeysAndIvs"

    sget-object v2, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;->SHOULD_PURGE_ON_DIFFERENT_USER_LOGIN:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    invoke-direct {v0, v1, v2}, Lazf;-><init>(Ljava/lang/String;Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;)V

    sput-object v0, Lazh;->SNAPS_ON_EXTERNAL_STORAGE_KEYS_AND_IVS:Lazf;

    .line 26
    new-instance v0, Lazf;

    const-string v1, "friendStorySnapKeysAndIvs"

    sget-object v2, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;->SHOULD_PURGE_ON_LOGOUT:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    invoke-direct {v0, v1, v2}, Lazf;-><init>(Ljava/lang/String;Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;)V

    sput-object v0, Lazh;->FRIEND_STORY_KEYS_AND_IVS:Lazf;

    .line 30
    new-instance v0, Lazf;

    const-string v1, "chatMediaKeysAndIvs"

    sget-object v2, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;->SHOULD_PURGE_ON_LOGOUT:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    invoke-direct {v0, v1, v2}, Lazf;-><init>(Ljava/lang/String;Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;)V

    sput-object v0, Lazh;->CHAT_MEDIA_KEYS_AND_IVS:Lazf;

    .line 34
    new-instance v0, Lazf;

    const-string v1, "creditCardToken"

    sget-object v2, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;->SHOULD_PURGE_ON_DIFFERENT_USER_LOGIN:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    invoke-direct {v0, v1, v2}, Lazf;-><init>(Ljava/lang/String;Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;)V

    sput-object v0, Lazh;->CREDIT_CARD_TOKEN:Lazf;

    .line 38
    new-instance v0, Lazf;

    const-string v1, "sqAuthToken"

    sget-object v2, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;->SHOULD_PURGE_ON_LOGOUT:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    invoke-direct {v0, v1, v2}, Lazf;-><init>(Ljava/lang/String;Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;)V

    sput-object v0, Lazh;->SQ_AUTH_TOKEN:Lazf;

    .line 42
    new-instance v0, Lazf;

    const-string v1, "deviceToken1KeyAndIv"

    sget-object v2, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;->SHOULD_ALWAYS_PERSIST:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    invoke-direct {v0, v1, v2}, Lazf;-><init>(Ljava/lang/String;Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;)V

    sput-object v0, Lazh;->DEVICE_TOKEN_1_KEY_AND_IV:Lazf;

    return-void
.end method
