.class final Lahc$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lahc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/StoryGroup;

.field final synthetic b:Lahc;


# direct methods
.method constructor <init>(Lahc;Lcom/snapchat/android/model/StoryGroup;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lahc$1;->b:Lahc;

    iput-object p2, p0, Lahc$1;->a:Lcom/snapchat/android/model/StoryGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lahc$1;->a:Lcom/snapchat/android/model/StoryGroup;

    iget-object v0, v0, Lcom/snapchat/android/model/StoryGroup;->mActionState:Lcom/snapchat/android/model/StoryGroup$ActionState;

    sget-object v1, Lcom/snapchat/android/model/StoryGroup$ActionState;->SAVED:Lcom/snapchat/android/model/StoryGroup$ActionState;

    if-ne v0, v1, :cond_0

    .line 267
    iget-object v0, p0, Lahc$1;->a:Lcom/snapchat/android/model/StoryGroup;

    sget-object v1, Lcom/snapchat/android/model/StoryGroup$ActionState;->READY:Lcom/snapchat/android/model/StoryGroup$ActionState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryGroup;->a(Lcom/snapchat/android/model/StoryGroup$ActionState;)V

    .line 269
    :cond_0
    return-void
.end method
