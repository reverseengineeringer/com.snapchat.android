.class final Lbwz$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbwz;->a(Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbwz;


# direct methods
.method constructor <init>(Lbwz;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lbwz$2;->a:Lbwz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lbwz$2;->a:Lbwz;

    iget-object v0, v0, Lbwz;->b:Lbwq;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbwq;->a(Ljava/lang/Boolean;)V

    .line 235
    return-void
.end method
