.class final Laom$1;
.super Lol;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laom;->a(Lcom/snapchat/android/model/StorySnapLogbook;Laom$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/StorySnapLogbook;

.field final synthetic b:Laom$a;

.field final synthetic c:Laom;


# direct methods
.method constructor <init>(Laom;Lcom/snapchat/android/model/StorySnapLogbook;Landroid/content/Context;Lcom/snapchat/android/model/StorySnapLogbook;Laom$a;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Laom$1;->c:Laom;

    iput-object p4, p0, Laom$1;->a:Lcom/snapchat/android/model/StorySnapLogbook;

    iput-object p5, p0, Laom$1;->b:Laom$a;

    invoke-direct {p0, p2, p3}, Lol;-><init>(Lcom/snapchat/android/model/StorySnapLogbook;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final a(Laku;)V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0, p1}, Lol;->a(Laku;)V

    .line 74
    iget-object v0, p0, Laom$1;->b:Laom$a;

    invoke-interface {v0}, Laom$a;->b()V

    .line 75
    return-void
.end method

.method protected final a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Lol;->a(Ljava/lang/String;I)V

    .line 85
    iget-object v0, p0, Laom$1;->a:Lcom/snapchat/android/model/StorySnapLogbook;

    sget-object v1, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;->READY:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StorySnapLogbook;->a(Lcom/snapchat/android/model/StorySnapLogbook$ActionState;)V

    .line 86
    iget-object v0, p0, Laom$1;->b:Laom$a;

    invoke-interface {v0}, Laom$a;->d()V

    .line 87
    return-void
.end method

.method protected final b(Laku;)V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0, p1}, Lol;->b(Laku;)V

    .line 79
    iget-object v0, p0, Laom$1;->a:Lcom/snapchat/android/model/StorySnapLogbook;

    sget-object v1, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;->DELETED:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StorySnapLogbook;->a(Lcom/snapchat/android/model/StorySnapLogbook$ActionState;)V

    .line 80
    iget-object v0, p0, Laom$1;->b:Laom$a;

    invoke-interface {v0}, Laom$a;->c()V

    .line 81
    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 64
    check-cast p1, Laku;

    invoke-virtual {p0, p1}, Laom$1;->a(Laku;)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Lol;->onPreExecute()V

    .line 68
    iget-object v0, p0, Laom$1;->a:Lcom/snapchat/android/model/StorySnapLogbook;

    sget-object v1, Lcom/snapchat/android/model/StorySnapLogbook$ActionState;->DELETING:Lcom/snapchat/android/model/StorySnapLogbook$ActionState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StorySnapLogbook;->a(Lcom/snapchat/android/model/StorySnapLogbook$ActionState;)V

    .line 69
    iget-object v0, p0, Laom$1;->b:Laom$a;

    invoke-interface {v0}, Laom$a;->a()V

    .line 70
    return-void
.end method
