.class public final Lbbg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbbg$1;
    }
.end annotation


# static fields
.field private static final DEFAULT_DISPLAY_DURATION:J = 0xbb8L


# instance fields
.field public backgroundColor:I

.field public delayed:Z

.field public duration:J

.field public iconRes:I

.field public listener:Lbcc;
    .annotation build Lcgc;
    .end annotation
.end field

.field public primaryText:Ljava/lang/CharSequence;
    .annotation build Lcgc;
    .end annotation
.end field

.field public secondaryText:Ljava/lang/CharSequence;
    .annotation build Lcgc;
    .end annotation
.end field

.field public showDancingGhost:Z

.field public sourceId:Ljava/lang/String;

.field public textColor:I

.field public useDefaultColors:Z

.field public useShortNotification:Z


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 3
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p3    # Ljava/lang/CharSequence;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lbbg;->duration:J

    .line 37
    iput-boolean v2, p0, Lbbg;->delayed:Z

    .line 47
    iput p1, p0, Lbbg;->iconRes:I

    .line 48
    iput-object p2, p0, Lbbg;->primaryText:Ljava/lang/CharSequence;

    .line 49
    iput-object p3, p0, Lbbg;->secondaryText:Ljava/lang/CharSequence;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbbg;->useDefaultColors:Z

    .line 51
    iput-boolean v2, p0, Lbbg;->useShortNotification:Z

    .line 52
    iput-object p4, p0, Lbbg;->sourceId:Ljava/lang/String;

    .line 53
    iput-boolean v2, p0, Lbbg;->showDancingGhost:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const v3, 0x7f0c0096

    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lbbg;->duration:J

    .line 37
    iput-boolean v2, p0, Lbbg;->delayed:Z

    .line 94
    iput v2, p0, Lbbg;->iconRes:I

    .line 95
    sget-object v0, Lbbg$1;->$SwitchMap$com$snapchat$android$util$chat$SecureChatService$SecureChatWriteCompletedCallback$Status:[I

    invoke-virtual {p1}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    const v1, 0x7f0c00dd

    invoke-virtual {v0, v1}, Lcom/snapchat/android/SnapchatApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lbbg;->secondaryText:Ljava/lang/CharSequence;

    .line 96
    sget v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->a:I

    iput v0, p0, Lbbg;->backgroundColor:I

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lbbg;->textColor:I

    .line 98
    iput-boolean v2, p0, Lbbg;->useDefaultColors:Z

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbbg;->useShortNotification:Z

    .line 100
    iput-object p2, p0, Lbbg;->sourceId:Ljava/lang/String;

    .line 101
    iput-boolean v2, p0, Lbbg;->showDancingGhost:Z

    .line 102
    return-void

    .line 95
    :pswitch_0
    invoke-static {}, Lale;->a()Lale;

    move-result-object v0

    invoke-virtual {v0}, Lale;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    const v1, 0x7f0c0184

    invoke-virtual {v0, v1}, Lcom/snapchat/android/SnapchatApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/SnapchatApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/SnapchatApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZLjava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lbbg;->duration:J

    .line 37
    iput-boolean v2, p0, Lbbg;->delayed:Z

    .line 59
    iput v2, p0, Lbbg;->iconRes:I

    .line 60
    iput-object p1, p0, Lbbg;->primaryText:Ljava/lang/CharSequence;

    .line 61
    iput-object p2, p0, Lbbg;->secondaryText:Ljava/lang/CharSequence;

    .line 62
    iput p3, p0, Lbbg;->backgroundColor:I

    .line 63
    iput p4, p0, Lbbg;->textColor:I

    .line 64
    iput-boolean v2, p0, Lbbg;->useDefaultColors:Z

    .line 65
    iput-boolean p5, p0, Lbbg;->useShortNotification:Z

    .line 66
    iput-object p6, p0, Lbbg;->sourceId:Ljava/lang/String;

    .line 67
    iput-boolean v2, p0, Lbbg;->showDancingGhost:Z

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lbbg;->duration:J

    .line 37
    iput-boolean v2, p0, Lbbg;->delayed:Z

    .line 125
    iput-boolean v3, p0, Lbbg;->showDancingGhost:Z

    .line 126
    iput-boolean v3, p0, Lbbg;->useDefaultColors:Z

    .line 127
    iput-boolean v2, p0, Lbbg;->useShortNotification:Z

    .line 128
    iput-object p1, p0, Lbbg;->sourceId:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lbbg;->duration:J

    .line 37
    iput-boolean v2, p0, Lbbg;->delayed:Z

    .line 83
    iput v2, p0, Lbbg;->iconRes:I

    .line 84
    iput-object p1, p0, Lbbg;->secondaryText:Ljava/lang/CharSequence;

    .line 85
    sget v0, Lcom/snapchat/android/notification/AndroidNotificationManager;->a:I

    iput v0, p0, Lbbg;->backgroundColor:I

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lbbg;->textColor:I

    .line 87
    iput-boolean v2, p0, Lbbg;->useDefaultColors:Z

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbbg;->useShortNotification:Z

    .line 89
    iput-object p2, p0, Lbbg;->sourceId:Ljava/lang/String;

    .line 90
    iput-boolean v2, p0, Lbbg;->showDancingGhost:Z

    .line 91
    return-void
.end method


# virtual methods
.method public final a(J)Lbbg;
    .locals 3

    .prologue
    .line 147
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lck;->a(Z)V

    .line 148
    iput-wide p1, p0, Lbbg;->duration:J

    .line 149
    return-object p0

    .line 147
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
