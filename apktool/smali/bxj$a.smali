.class public final Lbxj$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbxj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lbxj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lbxj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbxj;-><init>(B)V

    sput-object v0, Lbxj$a;->a:Lbxj;

    return-void
.end method
