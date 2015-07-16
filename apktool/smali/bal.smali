.class public final Lbal;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NEITHER_PHONE_NOR_CAPTCHA:Ljava/lang/String; = "https://neither-phone-nor-captcha-dot-feelinsonice-hrd.appspot.com"

.field public static final ONLY_CAPTCHA:Ljava/lang/String; = "https://only-captcha-dot-feelinsonice-hrd.appspot.com"

.field public static final PHONE_AND_CAPTCHA:Ljava/lang/String; = "https://phone-and-captcha-dot-feelinsonice-hrd.appspot.com"

.field private static final developerUsernames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sInstance:Lbal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lbal;->developerUsernames:Ljava/util/Set;

    .line 28
    new-instance v0, Lbal;

    invoke-direct {v0}, Lbal;-><init>()V

    sput-object v0, Lbal;->sInstance:Lbal;

    .line 31
    sget-object v0, Lbal;->developerUsernames:Ljava/util/Set;

    const-string v1, "danoz"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lbal;->developerUsernames:Ljava/util/Set;

    const-string v1, "dianayl"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lbal;->developerUsernames:Ljava/util/Set;

    const-string v1, "nic"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lbal;->developerUsernames:Ljava/util/Set;

    const-string v1, "tina"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lbal;->developerUsernames:Ljava/util/Set;

    const-string v1, "mduong"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lbal;->developerUsernames:Ljava/util/Set;

    const-string v1, "dongler"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lbal;->developerUsernames:Ljava/util/Set;

    const-string v1, "tobiasmcg"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lbal;->developerUsernames:Ljava/util/Set;

    const-string v1, "davidtian-test"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lbal;->developerUsernames:Ljava/util/Set;

    const-string v1, "lskarasawa"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lbal;->developerUsernames:Ljava/util/Set;

    const-string v1, "zhew2013"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lbal;->developerUsernames:Ljava/util/Set;

    const-string v1, "zhewtest1"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lbal;->developerUsernames:Ljava/util/Set;

    const-string v1, "ruoyul"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lbal;->developerUsernames:Ljava/util/Set;

    const-string v1, "ruoyul0"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lbal;->developerUsernames:Ljava/util/Set;

    const-string v1, "xiaosasonia"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lbal;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lbal;->sInstance:Lbal;

    return-object v0
.end method

.method public static a(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 2
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 108
    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->DEVELOPER_OPTIONS_CUSTOM_ENDPOINT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 112
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 113
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->DEVELOPER_OPTIONS_CUSTOM_ENDPOINT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 115
    return-void
.end method

.method public static a(Z)V
    .locals 2

    .prologue
    .line 123
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 124
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 125
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->DEVELOPER_OPTIONS_SQUARE_SANDBOX:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 127
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 128
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lbal;->developerUsernames:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 100
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    .line 101
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 102
    invoke-static {v0}, Lbal;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    .line 103
    if-nez v0, :cond_0

    invoke-static {}, Lbgr;->a()Lbgr;

    move-result-object v0

    iget-object v0, v0, Lbgr;->mProxyEndpoint:Lajz;

    iget-object v0, v0, Lajz;->mBaseUrl:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 62
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lbgr;->a()Lbgr;

    move-result-object v0

    iget-object v0, v0, Lbgr;->mProxyEndpoint:Lajz;

    iget-object v0, v0, Lajz;->mBaseUrl:Ljava/lang/String;

    .line 74
    :cond_0
    :goto_0
    return-object v0

    .line 64
    :cond_1
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    .line 65
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 67
    invoke-static {v1}, Lbal;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    const-string v0, "phone_verify"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "register"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71
    :cond_2
    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->REGISTRATION_TESTING_ENDPOINT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected value for REGISTRATION_TESTING_ENDPOINT: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static {}, Lbgr;->a()Lbgr;

    move-result-object v0

    iget-object v0, v0, Lbgr;->mProxyEndpoint:Lajz;

    iget-object v0, v0, Lajz;->mBaseUrl:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string v0, "https://only-captcha-dot-feelinsonice-hrd.appspot.com"

    goto :goto_0

    :pswitch_2
    const-string v0, "https://phone-and-captcha-dot-feelinsonice-hrd.appspot.com"

    goto :goto_0

    :pswitch_3
    const-string v0, "https://neither-phone-nor-captcha-dot-feelinsonice-hrd.appspot.com"

    goto :goto_0

    .line 74
    :cond_3
    invoke-static {}, Lbgr;->a()Lbgr;

    move-result-object v0

    iget-object v0, v0, Lbgr;->mProxyEndpoint:Lajz;

    iget-object v0, v0, Lajz;->mBaseUrl:Ljava/lang/String;

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static b(Z)V
    .locals 2

    .prologue
    .line 137
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    .line 138
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 139
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 140
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->DEVELOPER_OPTIONS_HORIZONTAL_SCROLL:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 142
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 143
    return-void
.end method

.method public static c()Z
    .locals 3

    .prologue
    .line 118
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 119
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->DEVELOPER_OPTIONS_SQUARE_SANDBOX:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static d()Z
    .locals 3

    .prologue
    .line 131
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    .line 132
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 133
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->DEVELOPER_OPTIONS_HORIZONTAL_SCROLL:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
