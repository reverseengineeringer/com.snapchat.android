.class public Lcom/snapchat/android/ui/InAppPromptFlipper;
.super Lcom/snapchat/android/ui/VerticalSwipeLayout;
.source "SourceFile"


# instance fields
.field private final c:Lbhk;

.field private final d:Lakr;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lbhk;

    invoke-direct {v0}, Lbhk;-><init>()V

    invoke-static {}, Lakr;->a()Lakr;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/snapchat/android/ui/InAppPromptFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lbhk;Lakr;)V

    .line 29
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lbhk;Lakr;)V
    .locals 4

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/ui/VerticalSwipeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/InAppPromptFlipper;->e:Z

    .line 39
    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(ID)V

    .line 40
    new-instance v0, Lcom/snapchat/android/ui/InAppPromptFlipper$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/InAppPromptFlipper$1;-><init>(Lcom/snapchat/android/ui/InAppPromptFlipper;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/InAppPromptFlipper;->a(Lcom/snapchat/android/ui/VerticalSwipeLayout$a;)V

    .line 33
    iput-object p3, p0, Lcom/snapchat/android/ui/InAppPromptFlipper;->c:Lbhk;

    .line 34
    iput-object p4, p0, Lcom/snapchat/android/ui/InAppPromptFlipper;->d:Lakr;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/InAppPromptFlipper;)Z
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/InAppPromptFlipper;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/snapchat/android/ui/InAppPromptFlipper;)Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/snapchat/android/ui/InAppPromptFlipper;->e:Z

    return v0
.end method

.method static synthetic c()V
    .locals 4

    .prologue
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lakr;->i(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPanelSelected - setSuggestionPromptLastDismissedTimestamp "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lakr;->ba()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/snapchat/android/ui/InAppPromptFlipper$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/InAppPromptFlipper$2;-><init>(Lcom/snapchat/android/ui/InAppPromptFlipper;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/InAppPromptFlipper;->post(Ljava/lang/Runnable;)Z

    .line 88
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/InAppPromptFlipper;->e:Z

    .line 92
    const/4 v0, 0x1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0, v2, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(ID)V

    .line 93
    return-void
.end method
