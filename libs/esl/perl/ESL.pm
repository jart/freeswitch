# This file was automatically generated by SWIG (http://www.swig.org).
# Version 1.3.35
#
# Don't modify this file, modify the SWIG interface instead.

package ESL;
require Exporter;
require DynaLoader;
@ISA = qw(Exporter DynaLoader);
package ESLc;
bootstrap ESL;
package ESL;
@EXPORT = qw( );

# ---------- BASE METHODS -------------

package ESL;

sub TIEHASH {
    my ($classname,$obj) = @_;
    return bless $obj, $classname;
}

sub CLEAR { }

sub FIRSTKEY { }

sub NEXTKEY { }

sub FETCH {
    my ($self,$field) = @_;
    my $member_func = "swig_${field}_get";
    $self->$member_func();
}

sub STORE {
    my ($self,$field,$newval) = @_;
    my $member_func = "swig_${field}_set";
    $self->$member_func($newval);
}

sub this {
    my $ptr = shift;
    return tied(%$ptr);
}


# ------- FUNCTION WRAPPERS --------

package ESL;


############# Class : ESL::eslEvent ##############

package ESL::eslEvent;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( ESL );
%OWNER = ();
%ITERATORS = ();
*swig_event_get = *ESLc::eslEvent_event_get;
*swig_event_set = *ESLc::eslEvent_event_set;
*swig_serialized_string_get = *ESLc::eslEvent_serialized_string_get;
*swig_serialized_string_set = *ESLc::eslEvent_serialized_string_set;
*swig_mine_get = *ESLc::eslEvent_mine_get;
*swig_mine_set = *ESLc::eslEvent_mine_set;
sub new {
    my $pkg = shift;
    my $self = ESLc::new_eslEvent(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        ESLc::delete_eslEvent($self);
        delete $OWNER{$self};
    }
}

*serialize = *ESLc::eslEvent_serialize;
*setPriority = *ESLc::eslEvent_setPriority;
*getHeader = *ESLc::eslEvent_getHeader;
*getBody = *ESLc::eslEvent_getBody;
*getType = *ESLc::eslEvent_getType;
*addBody = *ESLc::eslEvent_addBody;
*addHeader = *ESLc::eslEvent_addHeader;
*delHeader = *ESLc::eslEvent_delHeader;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


############# Class : ESL::eslConnection ##############

package ESL::eslConnection;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( ESL );
%OWNER = ();
%ITERATORS = ();
sub new {
    my $pkg = shift;
    my $self = ESLc::new_eslConnection(@_);
    bless $self, $pkg if defined($self);
}

sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        ESLc::delete_eslConnection($self);
        delete $OWNER{$self};
    }
}

*connected = *ESLc::eslConnection_connected;
*getInfo = *ESLc::eslConnection_getInfo;
*send = *ESLc::eslConnection_send;
*sendRecv = *ESLc::eslConnection_sendRecv;
*sendEvent = *ESLc::eslConnection_sendEvent;
*recvEvent = *ESLc::eslConnection_recvEvent;
*recvEventTimed = *ESLc::eslConnection_recvEventTimed;
*filter = *ESLc::eslConnection_filter;
*events = *ESLc::eslConnection_events;
*execute = *ESLc::eslConnection_execute;
sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


# ------- VARIABLE STUBS --------

package ESL;

1;
