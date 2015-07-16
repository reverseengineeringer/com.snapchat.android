.class final Lahi$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lahi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lahi$a;

.field final synthetic b:Lcom/snapchat/android/model/Friend;

.field final synthetic c:Lahi;


# direct methods
.method constructor <init>(Lahi;Lahi$a;Lcom/snapchat/android/model/Friend;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lahi$1;->c:Lahi;

    iput-object p2, p0, Lahi$1;->a:Lahi$a;

    iput-object p3, p0, Lahi$1;->b:Lcom/snapchat/android/model/Friend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 79
    iget-object v0, p0, Lahi$1;->c:Lahi;

    iget-object v0, v0, Lahi;->c:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lahi$1;->c:Lahi;

    iget-object v2, v2, Lahi;->e:Ljava/lang/String;

    new-instance v3, Lahi$1$1;

    invoke-direct {v3, p0}, Lahi$1$1;-><init>(Lahi$1;)V

    invoke-static {v0, v1, v2, v3}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/util/AlertDialogUtils$a;)V

    .line 91
    return-void
.end method
