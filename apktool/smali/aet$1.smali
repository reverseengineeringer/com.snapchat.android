.class final Laet$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laet;->a(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/DSnapView;

.field final synthetic b:Laet;


# direct methods
.method constructor <init>(Laet;Lcom/snapchat/android/discover/ui/DSnapView;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Laet$1;->b:Laet;

    iput-object p2, p0, Laet$1;->a:Lcom/snapchat/android/discover/ui/DSnapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Laet$1;->a:Lcom/snapchat/android/discover/ui/DSnapView;

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPage$Form;->LONGFORM:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->getIndex()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/discover/ui/DSnapView;->a(IZ)V

    .line 34
    return-void
.end method
