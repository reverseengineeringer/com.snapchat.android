.class public final Laux;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laux$1;,
        Laux$a;
    }
.end annotation


# static fields
.field private static mStartupPath:Lcom/snapchat/android/util/StartupPath;

.field private static sStartupContext:Laux;


# instance fields
.field private isAppStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Laux;

    invoke-direct {v0}, Laux;-><init>()V

    sput-object v0, Laux;->sStartupContext:Laux;

    .line 10
    sget-object v0, Lcom/snapchat/android/util/StartupPath;->UNKNOWN:Lcom/snapchat/android/util/StartupPath;

    sput-object v0, Laux;->mStartupPath:Lcom/snapchat/android/util/StartupPath;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Laux;->isAppStart:Z

    .line 28
    return-void
.end method

.method public static a()Laux;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Laux;->sStartupContext:Laux;

    return-object v0
.end method

.method public static b()Lcom/snapchat/android/util/StartupPath;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Laux;->mStartupPath:Lcom/snapchat/android/util/StartupPath;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 75
    sget-object v0, Laux$1;->$SwitchMap$com$snapchat$android$util$StartupContext$Checkpoint:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 92
    sget-object v0, Lcom/snapchat/android/util/StartupPath;->UNKNOWN:Lcom/snapchat/android/util/StartupPath;

    sput-object v0, Laux;->mStartupPath:Lcom/snapchat/android/util/StartupPath;

    .line 94
    :goto_0
    return-void

    .line 77
    :pswitch_0
    sget-object v0, Lcom/snapchat/android/util/StartupPath;->FROM_KILLED_STATE:Lcom/snapchat/android/util/StartupPath;

    sput-object v0, Laux;->mStartupPath:Lcom/snapchat/android/util/StartupPath;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Laux;->isAppStart:Z

    goto :goto_0

    .line 83
    :pswitch_1
    iget-boolean v0, p0, Laux;->isAppStart:Z

    if-nez v0, :cond_0

    .line 84
    sget-object v0, Lcom/snapchat/android/util/StartupPath;->FROM_DESTROYED_STATE:Lcom/snapchat/android/util/StartupPath;

    sput-object v0, Laux;->mStartupPath:Lcom/snapchat/android/util/StartupPath;

    .line 86
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Laux;->isAppStart:Z

    goto :goto_0

    .line 89
    :pswitch_2
    sget-object v0, Lcom/snapchat/android/util/StartupPath;->FROM_BACKGROUNDED_STATE:Lcom/snapchat/android/util/StartupPath;

    sput-object v0, Laux;->mStartupPath:Lcom/snapchat/android/util/StartupPath;

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
