.class final Lagl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lagl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lagl$a;

.field final synthetic b:Lcom/snapchat/android/model/Friend;

.field final synthetic c:Lagl;


# direct methods
.method constructor <init>(Lagl;Lagl$a;Lcom/snapchat/android/model/Friend;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lagl$1;->c:Lagl;

    iput-object p2, p0, Lagl$1;->a:Lagl$a;

    iput-object p3, p0, Lagl$1;->b:Lcom/snapchat/android/model/Friend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 79
    iget-object v0, p0, Lagl$1;->c:Lagl;

    iget-object v0, v0, Lagl;->c:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lagl$1;->c:Lagl;

    iget-object v2, v2, Lagl;->e:Ljava/lang/String;

    new-instance v3, Lagl$1$1;

    invoke-direct {v3, p0}, Lagl$1$1;-><init>(Lagl$1;)V

    invoke-static {v0, v1, v2, v3}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/util/AlertDialogUtils$a;)V

    .line 91
    return-void
.end method
