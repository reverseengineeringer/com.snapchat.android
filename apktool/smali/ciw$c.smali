.class final Lciw$c;
.super Lckf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lciw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private final a:Lciw$b;


# direct methods
.method constructor <init>(Lchn;Lciw$b;)V
    .locals 1

    .prologue
    .line 1122
    invoke-virtual {p1}, Lchn;->a()Lcho;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lckf;-><init>(Lchn;Lcho;)V

    .line 1123
    iput-object p2, p0, Lciw$c;->a:Lciw$b;

    .line 1124
    return-void
.end method


# virtual methods
.method public final a(JI)J
    .locals 3

    .prologue
    .line 1127
    iget-object v0, p0, Lciw$c;->a:Lciw$b;

    invoke-virtual {v0, p1, p2, p3}, Lciw$b;->a(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(JJ)J
    .locals 3

    .prologue
    .line 1131
    iget-object v0, p0, Lciw$c;->a:Lciw$b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lciw$b;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(JJ)I
    .locals 1

    .prologue
    .line 1135
    iget-object v0, p0, Lciw$c;->a:Lciw$b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lciw$b;->b(JJ)I

    move-result v0

    return v0
.end method

.method public final c(JJ)J
    .locals 3

    .prologue
    .line 1139
    iget-object v0, p0, Lciw$c;->a:Lciw$b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lciw$b;->c(JJ)J

    move-result-wide v0

    return-wide v0
.end method
