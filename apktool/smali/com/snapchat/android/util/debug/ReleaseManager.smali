.class public final Lcom/snapchat/android/util/debug/ReleaseManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/debug/ReleaseManager$1;,
        Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;
    }
.end annotation


# static fields
.field private static final DISCOVER_SHARING_ENABLED:Z = true

.field private static final INSTANCE:Lcom/snapchat/android/util/debug/ReleaseManager;

.field private static sReleaseMode:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/snapchat/android/util/debug/ReleaseManager;

    invoke-direct {v0}, Lcom/snapchat/android/util/debug/ReleaseManager;-><init>()V

    sput-object v0, Lcom/snapchat/android/util/debug/ReleaseManager;->INSTANCE:Lcom/snapchat/android/util/debug/ReleaseManager;

    .line 28
    sget-object v0, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;->DEBUG:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    sput-object v0, Lcom/snapchat/android/util/debug/ReleaseManager;->sReleaseMode:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/snapchat/android/util/debug/ReleaseManager;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/snapchat/android/util/debug/ReleaseManager;->INSTANCE:Lcom/snapchat/android/util/debug/ReleaseManager;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 55
    invoke-static {p0}, Lcom/snapchat/android/util/debug/ScApplicationInfo;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 57
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    :cond_0
    sget-object v0, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;->PRODUCTION:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    sput-object v0, Lcom/snapchat/android/util/debug/ReleaseManager;->sReleaseMode:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    .line 74
    :goto_0
    return-void

    .line 60
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string v1, "DEBUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "PROFILE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    :cond_2
    sget-object v0, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;->DEBUG:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    sput-object v0, Lcom/snapchat/android/util/debug/ReleaseManager;->sReleaseMode:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    goto :goto_0

    .line 64
    :cond_3
    const-string v1, "PERF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 65
    sget-object v0, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;->PERF:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    sput-object v0, Lcom/snapchat/android/util/debug/ReleaseManager;->sReleaseMode:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    goto :goto_0

    .line 66
    :cond_4
    const-string v1, "ALPHA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "UIAUTOMATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 67
    :cond_5
    sget-object v0, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;->ALPHA:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    sput-object v0, Lcom/snapchat/android/util/debug/ReleaseManager;->sReleaseMode:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    goto :goto_0

    .line 68
    :cond_6
    const-string v1, "BETA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 69
    sget-object v0, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;->BETA:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    sput-object v0, Lcom/snapchat/android/util/debug/ReleaseManager;->sReleaseMode:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    goto :goto_0

    .line 71
    :cond_7
    sget-object v0, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;->PRODUCTION:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    sput-object v0, Lcom/snapchat/android/util/debug/ReleaseManager;->sReleaseMode:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    goto :goto_0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    return v0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    return v0
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->g()Z

    move-result v0

    return v0
.end method

.method public static e()Z
    .locals 2

    .prologue
    .line 114
    sget-object v0, Lcom/snapchat/android/util/debug/ReleaseManager$1;->$SwitchMap$com$snapchat$android$util$debug$ReleaseManager$ReleaseMode:[I

    sget-object v1, Lcom/snapchat/android/util/debug/ReleaseManager;->sReleaseMode:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    invoke-virtual {v1}, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 119
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 117
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static f()Z
    .locals 2

    .prologue
    .line 127
    sget-object v0, Lcom/snapchat/android/util/debug/ReleaseManager$1;->$SwitchMap$com$snapchat$android$util$debug$ReleaseManager$ReleaseMode:[I

    sget-object v1, Lcom/snapchat/android/util/debug/ReleaseManager;->sReleaseMode:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    invoke-virtual {v1}, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 133
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 131
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static g()Z
    .locals 2

    .prologue
    .line 141
    sget-object v0, Lcom/snapchat/android/util/debug/ReleaseManager$1;->$SwitchMap$com$snapchat$android$util$debug$ReleaseManager$ReleaseMode:[I

    sget-object v1, Lcom/snapchat/android/util/debug/ReleaseManager;->sReleaseMode:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    invoke-virtual {v1}, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 147
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 145
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static h()Z
    .locals 1

    .prologue
    .line 155
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    return v0
.end method

.method public static i()Z
    .locals 2

    .prologue
    .line 159
    invoke-static {}, Lcom/snapchat/android/util/debug/ScApplicationInfo;->a()Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "flavortest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static j()Z
    .locals 2

    .prologue
    .line 168
    const-string v0, "com.snapchat.android"

    const-string v1, "flavortest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static k()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public static l()Z
    .locals 1

    .prologue
    .line 181
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
