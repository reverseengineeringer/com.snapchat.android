.class public final Lbdo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mFromPreview:Z

.field public mMediabryo:Laim;


# direct methods
.method public constructor <init>(Laim;Z)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lbdo;->mMediabryo:Laim;

    .line 12
    iput-boolean p2, p0, Lbdo;->mFromPreview:Z

    .line 13
    return-void
.end method
