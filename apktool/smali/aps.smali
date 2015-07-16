.class public final Laps;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/stories/ui/MyStoryView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laps$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/snapchat/android/ui/VerticalSwipeLayout;

.field public final b:Landroid/content/Context;

.field public final c:Lcom/snapchat/android/ui/VerticalSwipeLayout$a;

.field public d:Laen;

.field private final e:Laps$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/snapchat/android/ui/VerticalSwipeLayout;Lcom/snapchat/android/ui/VerticalSwipeLayout$a;Laps$a;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/ui/VerticalSwipeLayout;
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/android/ui/VerticalSwipeLayout$a;
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end param
    .param p4    # Laps$a;
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end param

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Laps;->b:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Laps;->a:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    .line 37
    iput-object p3, p0, Laps;->c:Lcom/snapchat/android/ui/VerticalSwipeLayout$a;

    .line 38
    iput-object p4, p0, Laps;->e:Laps$a;

    .line 39
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 135
    iget-object v0, p0, Laps;->a:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildCount()I

    move-result v0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Laps;->a:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getCurrentPanel()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 136
    iget-object v0, p0, Laps;->a:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(ID)V

    .line 138
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 145
    iget-object v0, p0, Laps;->a:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Laps;->a:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->getCurrentPanel()I

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Laps;->a:Lcom/snapchat/android/ui/VerticalSwipeLayout;

    const/4 v1, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(ID)V

    .line 148
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Laps;->e:Laps$a;

    invoke-interface {v0}, Laps$a;->a()V

    .line 156
    return-void
.end method
