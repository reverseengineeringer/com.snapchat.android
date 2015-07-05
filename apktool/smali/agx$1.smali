.class final Lagx$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lagx;->a(Lahb;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/StorySnapLogbook;

.field final synthetic b:Lagx;


# direct methods
.method constructor <init>(Lagx;Lcom/snapchat/android/model/StorySnapLogbook;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lagx$1;->b:Lagx;

    iput-object p2, p0, Lagx$1;->a:Lcom/snapchat/android/model/StorySnapLogbook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lagx$1;->a:Lcom/snapchat/android/model/StorySnapLogbook;

    iget-object v0, v0, Lcom/snapchat/android/model/StorySnapLogbook;->mActionState:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    sget-object v1, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;->SAVED:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    if-ne v0, v1, :cond_0

    .line 143
    iget-object v0, p0, Lagx$1;->a:Lcom/snapchat/android/model/StorySnapLogbook;

    sget-object v1, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;->READY:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StorySnapLogbook;->a(Lcom/snapchat/android/model/StorySnapLogbook$ActionState;)V

    .line 145
    :cond_0
    return-void
.end method
