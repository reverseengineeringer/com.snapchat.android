.class final Lacg$2;
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
.field final synthetic a:Lacg;


# direct methods
.method constructor <init>(Lacg;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lacg$2;->a:Lacg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 36
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 37
    return-void
.end method
