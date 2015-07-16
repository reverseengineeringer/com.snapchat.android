.class final Lacg$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacg;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lacg;


# direct methods
.method constructor <init>(Lacg;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 26
    iput-object p1, p0, Lacg$1;->c:Lacg;

    iput-object p2, p0, Lacg$1;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lacg$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lacg$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lacg$1;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lacg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 30
    return-void
.end method
