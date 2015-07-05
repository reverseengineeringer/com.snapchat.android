.class final Lagn$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lagn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/Friend;

.field final synthetic b:Lagn;


# direct methods
.method constructor <init>(Lagn;Lcom/snapchat/android/model/Friend;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lagn$1;->b:Lagn;

    iput-object p2, p0, Lagn$1;->a:Lcom/snapchat/android/model/Friend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 144
    if-eqz p2, :cond_0

    .line 145
    iget-object v0, p0, Lagn$1;->b:Lagn;

    invoke-static {v0}, Lagn;->a(Lagn;)Lagn$a;

    move-result-object v0

    iget-object v1, p0, Lagn$1;->a:Lcom/snapchat/android/model/Friend;

    invoke-interface {v0, v1}, Lagn$a;->b(Lcom/snapchat/android/model/Friend;)V

    .line 150
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lagn$1;->b:Lagn;

    invoke-static {v0}, Lagn;->a(Lagn;)Lagn$a;

    move-result-object v0

    iget-object v1, p0, Lagn$1;->a:Lcom/snapchat/android/model/Friend;

    invoke-interface {v0, v1}, Lagn$a;->c(Lcom/snapchat/android/model/Friend;)V

    goto :goto_0
.end method
