.class public final Lbxg$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbxg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lbxg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lbxg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbxg;-><init>(B)V

    sput-object v0, Lbxg$a;->a:Lbxg;

    return-void
.end method
